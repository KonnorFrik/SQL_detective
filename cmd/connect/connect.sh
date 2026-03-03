#! /bin/bash

. ../../container/.env

psql -U $PG_USER_NAME -W $PG_USER_PASS -h localhost -d $PG_DATABASE
