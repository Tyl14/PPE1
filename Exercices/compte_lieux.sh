DATADIR=$1
ANNEE=$2
MOIS=$3
TOPN=$4

cd $DATADIR

cat ./$ANNEE/$ANNEE_$MOIS_*.ann | grep Location | cut -f3 | sort | uniq -c | sort -n | tail -n $TOPN
