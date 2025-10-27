# Journal de bord PPE

# Semaine 2 # Au début tout allait bien, j'ai suivis toutes les instructions en cours et tout fonctionnait correctement. J'ai rencontré mon premier problème quand il a fallu recupérer le repositary, après la commande git clone <URL>, on ma demandé ma passphrase.. Et j'étais en mode, mais quelle passphrase ? Ca sort d'où ça ?? Enfin bref, pour la faire courte j'ai dû re créer une clé ssh pour configurer une passphrase. A part cet accro, le reste était OK.

# Semaine 3 # On a commencé à créer des scripts. Encore une fois, au début ça allait, je comprenais (je crois). C'était  un peu tendu quand on a aborder les pipelines et les flux d'entrées-sorties (avec wc et output) mais je captais globalement la chose. Et puis est venu un moment, où j'ai décrochée, et je captais plus rien. J'ai compris le premier exercice (au moins ça), où ilfallait compter le nombre de Locations par année (en utilisant echo, cat, grep et wc). J'ai réussi a faire la première partie de l'exercice 2 également (je crois), mais je ne suis pas sûre de l'avoir fait de la manière attendue, j'ai pas tout compris par rapport aux arguments. Et pour la partie où il faut classer ls lieux, je suis coincée, j'ai une vague idée de la manière dont il faut procéder et des commandes a utilisées mais je n'arrive pas à mettre tout ça en forme.

# Semaine 4 # On a fait la correction des scripts mais certains point étaient encore flou. Ceratins de mes scripts fonctionnaient et d'autres non, malgré qu'il étaient bien écrit. Et j'ai finalement compris que le probmème venait des arguments dans mes commandes! Maintenant je comprends beaucoup mieux.

# Script_Bash_Exo_4 # Si la variable # n'est pas égale a 1, afficher "ce programme demande un argument" et quitter le script, si la condition est rempli, en prenant en compte FICHIER_URLS en argument 1 et établissant que OK et NOK = 0, tant que la ligne du fichier est lisible, afficher la ligne, si le début de la ligne $LINE correspond a https?//, alors afficher "ressemble à une URL valide" (calcul le nombre d'URL valide), sinon, afficher "ne ressemble pas à une URL valide" (calcul le nombre d'URL non valide), si la condition est rempli, terminer la boucle et afficher "nombre URLs et nombre lignes douteuses" 

# Mini-projet - Exo1 # 
1- Cat permet d'afficher le contenu d'un fichier, mais dans notre cas c'est inutile vu que la boucle while lit le fichier ligne par ligne.
2- Il faut définir "urls/fr.txt" comme une variable avec un $, on peut par exemple la nommer : URLS=$1 on pourra alors s'y réfferer dans le script comme $URLS et il faudra alors donner le fichier contenant les urls en argument de la commande.
3- Il faut ajouter une boucle if, par exemple : 
if [ $ # - ne 1 ]
then
echo " Ce programme demande un argument "
exit
fi
4- Pour afficher le numéro de ligne on peut utiliser la commande nl
