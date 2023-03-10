#!/bin/sh
# Создание бекапа дазы PostgreSQL
pg_basebackup -D - -Ft -X fetch -d postgresql://postgres:12345678@localhost | bzip2 > /tmp/pgbackup.tar.bz2