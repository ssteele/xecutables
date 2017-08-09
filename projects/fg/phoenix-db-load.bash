#!/bin/bash


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     VERIFY ENVIRONMENT
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

source ${xec}/verify-bash-variables.bash

# validate all variables
verify_bash_exports gr
bash_exports_valid=$?

# validate all aliases
verify_bash_aliases
bash_aliases_valid=$?

if [[ 0 = ${bash_exports_valid} || 0 = ${bash_aliases_valid} ]]; then
    exit
fi

shopt -s expand_aliases
source ~/.bashrc


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

doDump=true
if [[ -n "$2" ]]; then
    if [[ 'false' = $2 ]]; then
        doDump=false
    fi
fi

echo ''

if $doDump; then
    echo '...dumping current DB'
    mysqldump -h ${host} -u ${user} -p${password} ${database} > ${gr}/`date +%Y-%m-%d`_phoenix.sql
fi

echo "...loading $input"
mysql -h ${host} -u ${user} -p${password} -D ${database} < $input
echo ''

exit