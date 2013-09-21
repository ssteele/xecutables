#!/bin/csh

echo ''
echo -n '     site (eg: valerotexasopen.org) => '
set site = "$<"
echo -n '   sql file (eg: valero_2012-08-30) => '
set sql_file = "$<"
echo -n '           old db prepend (eg: www) => '
set old_sql_prepend = "$<"
echo -n '           new db prepend (eg: stg) => '
set new_sql_prepend = "$<"

sed s,${old_sql_prepend}.${site},${site},g ${sql_file}.sql > ${sql_file}_temp.sql
sed s,${site},${new_sql_prepend}.${site},g ${sql_file}_temp.sql > ${new_sql_prepend}_${sql_file}.sql

rm -fr ${sql_file}_temp.sql
echo ''

echo 'Now get in there and do something like:'
echo "UPDATE wp_users SET user_email = 'nobody6571@nowhere8256.com' WHERE user_email != 'ssteele@w2odigital.com';"

echo ''

exit