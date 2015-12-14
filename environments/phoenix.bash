#!/bin/bash

# custom site (hardcoded)
env="$work/sites/phoenix_beta"

# set root
cd ${env}
setr

# set FG
cd ${gr}/application/libraries/Fg/
setf

# set routes
cd ${gr}/application/config/
setrr

# set controllers
cd ${gr}/application/controllers/
setc

# set entities
cd ${gf}/Entity/
sete

# set models
cd ${gf}/Model/
setm

# set viewmodels
cd ${gr}/application/libraries/Fg/ViewModel/
setvv

# set views
cd ${gr}/application/views/
setv

# set services
cd ${gf}/Service
sets

# set attributes
cd ${gf}/Ade/Attribute
seta

# set js
cd ${gr}/assets/js
setj

# set tests
cd ${gr}/tests/
sett

# set db alters
cd ${gr}/db/alters
setd

# set documentation
cd ~/work/documentation/
setdd

# set assets
cd ~/work/assets/phoenix_beta/2015/
setaa

# set current
cd ~/Desktop/current/
setcc

gr
