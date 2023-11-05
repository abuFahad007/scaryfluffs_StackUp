
#!/bin/bash

# MySQL server connection details
DB_USER="root"
DB_PASS="12345678"
DB_HOST="localhost"

mysql -u $DB_USER -p$DB_PASS -h $DB_HOST < src/mindspace.db.sql

