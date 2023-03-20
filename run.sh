#!/bin/sh
set -e

# Restore the database if it does not already exist.
if [ -f "/data/${DATABASE_FILENAME}" ]; then
	echo "Database already exists, skipping restore"
else
	echo "No database found, restoring from replica if exists"
	litestream restore -v -if-replica-exists
fi

exec litestream replicate
