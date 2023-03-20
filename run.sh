#!/bin/sh
set -e

DATABASE_PATH="/data/${DATABASE_FILENAME}"

# Restore the database if it does not already exist.
if [ -f "${DATABASE_PATH}" ]; then
	echo "Database already exists, skipping restore"
else
	echo "No database found, restoring from replica if exists"
	litestream restore -v -if-replica-exists "${DATABASE_PATH}"
fi

exec litestream replicate
