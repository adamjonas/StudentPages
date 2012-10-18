#!/bin/bash
touch studentinfo.sqlite
sqlite3 studentinfo.sqlite < schema.sql
ruby popDB.rb 