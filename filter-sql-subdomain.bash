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
echo -n '   sql file (eg: valero_2012-08-30.sql) => '
read sql_file
echo -n '           old db prepend (eg: www) => '
read old_sql_prepend
echo -n '           new db prepend (eg: loc) => '
read new_sql_prepend
echo -n '              old local port (eg: 8888) => '
read old_local_port
echo -n '              new local port (eg: 8888) => '
read new_local_port

sed s,${old_sql_prepend}.${site},${site},g ${sql_file} > ${sql_file}.temp1
sed s,${site}:${old_local_port},${site},g ${sql_file}.temp1 > ${sql_file}.temp2

if [[ -n $new_local_port ]]; then
    sed s,${site},${new_sql_prepend}.${site}:${new_local_port},g ${sql_file}.temp2 > ${new_sql_prepend}_${sql_file}
else
    sed s,${site},${new_sql_prepend}.${site},g ${sql_file}.temp2 > ${new_sql_prepend}_${sql_file}
fi

rm -fr ${sql_file}.temp*

echo ''
echo 'Now get in there and do something like:'
echo "UPDATE wp_users SET user_email = 'nobody1212@nowhere1212.com' WHERE user_email != 'steven.harville.steele@gmail.com';"
echo ''

