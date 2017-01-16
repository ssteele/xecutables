#!/bin/bash


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     LOAD LOS DB
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

host='fg_mysql'
user='root'
password='financegenius'
database='fg_los'

if [[ -z "$1" ]]; then
    echo 'Please supply the SQL input file as an argument'
    exit
fi
input="$1"

mysql -h ${host} -u ${user} -p${password} -D ${database} < $input
