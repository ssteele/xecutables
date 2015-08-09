#!/bin/bash

mysqldump -u steele -p ci_phoenix > ${db}/`date +%Y-%m-%d`_phoenix.sql