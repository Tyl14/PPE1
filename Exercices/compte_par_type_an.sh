# Comptes par type d'entité (Person) par année

cd /Users/tyllanecazenave/Exercice1/ann

echo "Person en 2016:"
cat 2016/* | grep Person | wc -l
echo "Person en 2017:"
cat 2017/* | grep Person | wc -l
echo "Person en 2018:"
cat 2018/* | grep Person | wc -l
