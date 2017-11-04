#!/bin/bash


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     VERIFY ENVIRONMENT
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

source ${xec}/verify-bash-variables.bash

# validate all variables
verify_bash_exports gR
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
#     LOAD BS DB
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

user='root'
password='password'
database='bitesquad'

gR

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
    mysqldump -u${user} -p${password} ${database} > `date +%Y-%m-%d`_${database}.sql
    gzip `date +%Y-%m-%d`_${database}.sql
fi

echo "...loading $input"
sql_file=${input%.gz}
if [ "$sql_file" != "$input" ]; then
    gunzip $input
fi
mysql -u${user} -p${password} -D${database} < $sql_file
echo ''

exit