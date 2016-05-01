#!/bin/bash


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     VERIFY ENVIRONMENT
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

source ${xec}/verify-bash-variables.bash

# validate all variables
verify_bash_exports
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
#     UPDATE URL PREPEND IN A DB DUMP
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

echo ''
echo -n '     site (eg: valerotexasopen.org) => '
read site
echo -n '   sql file (eg: valero_2012-08-30) => '
read sql_file
echo -n '           old db prepend (eg: www) => '
read old_sql_prepend
echo -n '           new db prepend (eg: loc) => '
read new_sql_prepend
echo -n '              local port (eg: 8888) => '
read local_port

sed s,${old_sql_prepend}.${site},${site},g ${sql_file}.sql > ${sql_file}_temp.sql
sed s,${site},${new_sql_prepend}.${site}:${local_port},g ${sql_file}_temp.sql > ${new_sql_prepend}_${sql_file}.sql

rm -fr ${sql_file}_temp.sql

echo ''
echo 'Now get in there and do something like:'
echo "UPDATE wp_users SET user_email = 'nobody1212@nowhere1212.com' WHERE user_email != 'steven.harville.steele@gmail.com';"
echo ''

