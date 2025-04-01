#!/bin/bash
datbases=("db1" "db2" "db3")
for db in "${databases[@]}"; do
	mysqldump -u root -p"password" "$db" > "/backup/$db.sql"
	echo "Backup completed for $db."
done

