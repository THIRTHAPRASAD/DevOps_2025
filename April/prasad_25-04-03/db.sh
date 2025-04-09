#!/bin/bash
database=("db1" "db2" "db3")
for db in "${database[@]}"; do
	mysqldump -u root -p"password" "$db" > "/backup/$db.sql"
	echo "Backup completed for $db"
done

