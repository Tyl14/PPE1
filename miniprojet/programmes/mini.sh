#!/usr/bin/bash

if [ $# -ne 1 ]
then
	echo "Ce programme demande un argument"
	exit
fi

Fichier_urls=$1

while read -r line
do echo "${line}"

# Si l'url est ok
if [[ $line =~ ^https?:// ]]
then
	echo "$line ressemble à une url"

# Vérifier l'encodage UTF-8
if curl -s "$line" | iconv -f UTF-8 -t UTF-8 >/dev/null 2>&1
then
	echo "$line URLS valide"
	echo -e "$ligne_id\t$line\t$(curl -s -o /dev/null -w "%{http_code}\t%{content_type}" "$line")\t$(curl -s "$line" | wc -w)" >> tableau-fr.tsv
	ligne_id=$((ligne_id+1))
	# Extraction du texte des pages
	lynx -dump -nolist "$line" >> contenu.txt

else
	echo "$line URLs invalide"
	echo "$line" >> urls_invalide.txt
fi
else
	echo "Ne ressemble pas à un url"
	echo "$line" >> urls_invalide.txt
fi

done < "$Fichier_urls";
echo "Tout est fait les bichties"
