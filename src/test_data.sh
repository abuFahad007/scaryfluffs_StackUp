#!/bin/bash

# MySQL server connection details
DB_USER="root"
DB_PASS="12345678"
DB_HOST="localhost"

# Database and table names
DB_NAME="test_base"
TABLE_NAME="test_table"

# SQL statements
CREATE_DB_SQL="CREATE DATABASE IF NOT EXISTS $DB_NAME;"
CREATE_TABLE_SQL="CREATE TABLE IF NOT EXISTS $TABLE_NAME (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  email VARCHAR(255)
);"

# MySQL command
MYSQL_CMD="mysql -u $DB_USER -p$DB_PASS -h $DB_HOST"

# Create the database and table
$MYSQL_CMD -e "$CREATE_DB_SQL"
$MYSQL_CMD $DB_NAME -e "$CREATE_TABLE_SQL"

echo "Database and table created successfully."
