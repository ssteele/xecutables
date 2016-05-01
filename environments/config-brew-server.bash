#!/bin/bash

# custom path (hardcoded)
env='phoenix_beta'

# set root
cd ${ll}/sites/${env}
setr

# set project config
cd ${gr}/application/config/
seth

# set etc
cd /usr/local/etc/
sete

# set nginx
cd ${ge}/nginx/
setn

# set php
cd ${ge}/php/5.5/
setp

# set php extensions
cd ${gp}/conf.d/
setpp

# set assets
cd ~/work/assets/phoenix_beta/2015/setup/
seta

gr
