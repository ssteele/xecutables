#!/bin/bash

mysqldump -u steele -p ci_phoenix > ${gD}/data/db/phoenix/`date +%Y-%m-%d`_phoenix.sql
