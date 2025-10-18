#!/bin/bash

TYPE=$2
DATADIR=$1

bash compte_par_type.sh $DATADIR 2016 $TYPE
bash compte_par_type.sh $DATADIR 2017 $TYPE
bash compte_par_type.sh $DATADIR 2018 $TYPE
