#!/bin/bash

mysql -u root -p$MYSQL_ROOT_PASSWORD < /data_import/rdonetta_web.sql
