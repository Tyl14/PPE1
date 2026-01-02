# Journal de bord PPE
Un journal intime pas trop intime.

# Semaine 2 #
Au début tout allait bien, j'ai suivis toutes les instructions en cours et tout fonctionnait correctement. J'ai rencontré mon premier problème quand il a fallu recupérer le repositary, après la commande git clone <URL>, on ma demandé ma passphrase.. Et j'étais en mode, mais quelle passphrase ? Ca sort d'où ça ?? Enfin bref, pour la faire courte j'ai dû re créer une clé ssh pour configurer une passphrase. A part cet accro, le reste était OK.

# Semaine 3 #
On a commencé à créer des scripts. Encore une fois, au début ça allait, je comprenais (je crois). C'était  un peu tendu quand on a aborder les pipelines et les flux d'entrées-sorties (avec wc et output) mais je captais globalement la chose. Et puis est venu un moment, où j'ai décrochée, et je captais plus rien. J'ai compris le premier exercice (au moins ça), où ilfallait compter le nombre de Locations par année (en utilisant echo, cat, grep et wc). J'ai réussi a faire la première partie de l'exercice 2 également (je crois), mais je ne suis pas sûre de l'avoir fait de la manière attendue, j'ai pas tout compris par rapport aux arguments. Et pour la partie où il faut classer ls lieux, je suis coincée, j'ai une vague idée de la manière dont il faut procéder et des commandes a utilisées mais je n'arrive pas à mettre tout ça en forme.

# Semaine 4 #
On a fait la correction des scripts mais certains point étaient encore flou. Ceratins de mes scripts fonctionnaient et d'autres non, malgré qu'il étaient bien écrit. Et j'ai finalement compris que le probmème venait des arguments dans mes commandes! Maintenant je comprends beaucoup mieux.

# Semaine 5 #
Script_Bash_Exo_4 - Si la variable # n'est pas égale a 1, afficher "ce programme demande un argument" et quitter le script, si la condition est rempli, en prenant en compte FICHIER_URLS en argument 1 et établissant que OK et NOK = 0, tant que la ligne du fichier est lisible, afficher la ligne, si le début de la ligne $LINE correspond a https?//, alors afficher "ressemble à une URL valide" (calcul le nombre d'URL valide), sinon, afficher "ne ressemble pas à une URL valide" (calcul le nombre d'URL non valide), si la condition est rempli, terminer la boucle et afficher "nombre URLs et nombre lignes douteuses" 

# Semaine 6 #
Mini-projet 1 - Exo1
 
1- Cat permet d'afficher le contenu d'un fichier, mais dans notre cas c'est inutile vu que la boucle while lit le fichier ligne par ligne.

2- Il faut définir "urls/fr.txt" comme une variable avec un $, on peut par exemple la nommer : URLS=$1 on pourra alors s'y réfferer dans le script comme $URLS et il faudra alors donner le fichier contenant les urls en argument de la commande.

3- Il faut ajouter une boucle if, par exemple : 
if [ $ # - ne 1 ]
then
echo " Ce programme demande un argument "
exit
fi

4- Pour afficher le numéro de ligne on peut utiliser la commande lineno

# Semaine 7 #
Mini-projet 2 - Pour le coup c'était plus évident que la première partie. Logique parce que là il suffisait juste de passer ce qu'on avait déjà fait en HTML. Mais c'était plus clair aussi parce qu'on avait déjà travailler sur HTML dans un autre cours. Du coup j'étais famillière avec le concept des balises et la construction d'un fichier HTML. J'ai eu plus de mal a construire le premier script, c'était pas forcément évident de bien formuler les commandes. J'ai eu du mal par moment a bien construire ma ligne de commande avec les options et les pipelines. Rien que trouver les bonnes commandes/option des fois c'était pas facile.

# Semaine 8 #
Mini-projet 3 - Je crois bien que j'ai pas vraiment fait ce qu'il fallait. J'étais absente au cours cette semaine là et je n'ai pas bien saisi ce qui était demandé. Après coup j'ai discuté avec des camarades et en fait il fallait (je crois) faire une feuille style.css, personnalisé par nos soins, et la push dans notre dépôt git et l'utilser dans l'index.htmml. Chose que je n'ai pas faite. Je suis encore un peu confuse, (ça m'apprendra a être absente). Je me suis un peu trop appuyer sur l'exemplier au final. J'ai pas plsu personnalisé que ça, j'ai utilisé le stylesheet par défaut de bulma (je crois) et globalement j'ai juste joué avec les couleurs et la position et le style du texte. Et dans ma page web, comme dans les exemples, j'ai fait une présentation générale du projet final mais en fait il fallait parler du mini-projet plus précisément. Et par rapport aux expressions régulières, j'ai consulter les diapos et le concept général me parait assez clair mais il y a certains points comme les groupes et les captures que je ne comprend pas bien.J'ai du mal aussi avec les références, je ne vois pas comment on les fait et comment on les utilise.

# Dernières semaines #
#Travail sur le projet final#
Le choix du mot sur lequel faire porter le projet à été la première grosse difficulté, vraiment. C’était quelque peu challenging de trouver un mot, assez polysémique (mais pas trop non plus), qui soit intéressant à étudier dans les différentes langues, dans mon cas, le russe, le japonais et le français, et qui n’a pas déjà été fait par les promos précédentes. On a finalement choisi le terme "charge" pour sa connotation abstraite,  notamment avec le concept de "charge mentale".
Le début du script était relativement simple dans la mesure où l’on reprenait ce qu’on avait fait dans les mini-projets mais j’ai relevé une difficulté ou plutôt une incompréhension au niveau du comptage d'occurrences du mot cible. Au départ, j’avais cette commande dans mon script : NB_OCCURENCES=$(cat "tmp.txt" | grep -oEi "charge[s]?" | wc -l). Puis avec l’évolution de mon script, j’ai changer la commande par celle-ci : NB_OCCURENCES=$(grep -oEi "charge[s]?" "$FICHIER_DUMP" | wc -l), pour partir de la production de mes dumps textuels. Mais j’ai remarqué une grande différence entre les résultats selon les commandes utilisées, et aucuns n’était réellement satisfaisant. Pour la première commande, le nombre d'occurrences était beaucoup trop élevé. Dans ce cas j’ai pensée que ça pouvait être lié à la différence avec cat et le fait que les dump (lynx -dump -nolist) ne prennent pas toutes les données superflu où l’on pourrait retrouver le mot ciblé. Mais avec la deuxième manière de faire, il y a avait moins d'occurrences affichés que ce qu’ils y avait dans les pages, là je n’ai pas vraiment de piste pour expliquer le pourquoi du comment (on remarque la différence en regardant les concordancier, presque à chaque fois, le nombres d'occurrences du mot cible affichée dans le tableau ne correspond pas au nombres de lignes des concordanciers).
Enfin, je ne l’ai pas remarqué tout de suite mais quand je suis passé à l’étape du concordancier, quelque chose bloquait, je n’arrivait à aucun résultats, même si mes commandes avaient l’air correctes. Et puis j’ai remarqué que mes fichiers contextes présentait des erreurs d’encodage. J’ai donc incorporer une commande de conversion (qu’on avait déjà manipulée en cours de construction de données) iconv -f ISO-8859-1 -t UTF-8, et tout allait beaucoup mieux. Puis j’ai aussi réaliser que mes fichiers dump présentaient des erreurs d’encodage. Du coup j’ai changé mon script et placer la conversion au niveau des fichier dump pour que le reste soit également bien encodé. Pourtant, malgré mes conversions, je me suis rendue compte que lorsque j’essayait d’ouvrir un fichier dump ou contexte en cliquant sur le lien depuis le tableau issus de mon script, la page qui s’affiche à l’écran présente des erreurs d’encodage. Je n’ai pas compris, je ne comprends toujours pas d’ailleurs, pourquoi ce décalage alors que mes fichiers ont bien été convertis en UTF-8 (ils s’affichent sans problèmes d’encodage dans le repository). 
