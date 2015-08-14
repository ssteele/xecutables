#!/bin/bash

# custom site (hardcoded)
env='phoenix_beta'

# set root
cd ${env}
setr

# set FG
cd ${gr}/application/libraries/Fg/
setf

# set routes
cd ${gr}/application/config/
setrr

# set models
cd ${gf}/Model/
setm

# set entities
cd ${gf}/Entity/
sete

# set attributes
cd ${gf}/Service
sets

# set attributes
cd ${gf}/Ade/Attribute
seta

# set views
cd ${gr}/application/views/
setv

# set controllers
cd ${gr}/application/controllers/
setc

# set js
cd ${gr}/assets/js
setj

# set tests
cd ${gr}/tests/
sett

# set tests
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
