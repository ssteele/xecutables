#!/bin/csh

echo ''
echo -n '     site (eg: valerotexasopen.org) => '
set site = "$<"
echo -n '   sql file (eg: valero_2012-08-30) => '
set sql_file = "$<"
echo -n '           old db prepend (eg: stg) => '
set old_sql_prepend = "$<"
echo -n '           new db prepend (eg: stg) => '
set new_sql_prepend = "$<"

sed s,${old_sql_prepend}.${site},${site},g ${sql_file}.sql > ${sql_file}_temp.sql
sed s,${site},${new_sql_prepend}.${site},g ${sql_file}_temp.sql > ${new_sql_prepend}_${sql_file}.sql

rm -fr ${sql_file}_temp.sql
echo ''

exit