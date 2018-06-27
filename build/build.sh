#!/bin/sh

BASEDIR=$(dirname "$0")
BASEDIR=$(realpath "$BASEDIR")

. $BASEDIR/env.sh

### Setup Database ###
setup-database.sh $BASEDIR/setup.sql

echo
echo "ATTENTION"
echo "Sit down, relax and drink a cup of coffee... The next steps might take a while!"
echo "Step 1: Build platform DSLs"
echo "Step 2: Build frontend"
echo "Step 3: Build restapi"
echo
echo "Countdown:"
countdown.sh 10

### Build DSL ###
build-platform.sh $PLATFORM_LOCATION

### Build Frontend ###
build-frontend.sh $FRONTEND_LOCATION

### Build Restapi ###
build-restapi.sh $RESTAPI_LOCATION
