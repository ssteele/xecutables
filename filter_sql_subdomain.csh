#!/bin/csh

echo ''
echo -n '     site (eg: valerotexasopen.org) => '
set site = "$<"
echo -n '   sql file (eg: valero_2012-08-30) => '
set sql_file = "$<"
echo -n '               db prepend (eg: stg) => '
set sql_prepend = "$<"

sed s,www.${site},${site},g ${sql_file}.sql > ${sql_file}_temp.sql
sed s,${site},${sql_prepend}.${site},g ${sql_file}_temp.sql > ${sql_prepend}_${sql_file}.sql

rm -fr ${sql_file}_temp.sql
echo ''

exit