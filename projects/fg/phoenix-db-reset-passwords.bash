#!/bin/bash


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     LOAD LOS DB
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

host='fg_mysql'
user='root'
password='financegenius'
database='fg_los'

mysql -h ${host} -u ${user} -p${password} -D ${database} < ${xec}/fg/reset-passwords-to-w.sql
