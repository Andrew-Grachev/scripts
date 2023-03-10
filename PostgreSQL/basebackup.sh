#!/bin/sh
pg_basebackup -D - -Ft -X fetch -d postgresql://postgres:12345678@localhost | bzip2 > /tmp/dump.tar.bz2