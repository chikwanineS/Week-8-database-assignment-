
-- ============================================
-- WEEK 8 ASSIGNMENT
-- MYSQL DATABASE BACKUP AND RESTORE
-- ============================================


-- QUESTION 1: BACKING UP A SINGLE DATABASE
-- Back up the sales database using mysqldump.
-- -u root: Uses root as the MySQL username.
-- -p: Prompts for the MySQL password.
-- sales: Specifies the database to back up.
-- > sales_backup.sql: Saves the backup into a file.

-- COMMAND:
-- mysqldump -u root -p sales > sales_backup.sql

-- Explanation:
-- This command creates a backup of the sales database,
-- including its tables, structures, and data.
-- Regular backups are important because they protect
-- information from accidental deletion, hardware failure,
-- and unexpected system problems.


-- QUESTION 2: BACKING UP ALL DATABASES
-- Back up every database available on the MySQL server.
-- -u root: Uses the root username.
-- -p: Requests the MySQL password.
-- --all-databases: Exports all databases.
-- > all_databases_backup.sql: Saves the backup file.

-- COMMAND:
-- mysqldump -u root -p --all-databases > all_databases_backup.sql

-- Explanation:
-- This command creates a complete backup of all databases
-- on the MySQL server.
-- Backing up all databases before migration is important
-- because it protects all information and allows databases
-- to be transferred and restored on another server.


-- QUESTION 3: CREATING A DATA-ONLY BACKUP
-- Back up only the data in the sales database.
-- --no-create-info: Excludes table creation statements.
-- The backup contains INSERT statements for the data.

-- COMMAND:
-- mysqldump -u root -p --no-create-info sales > sales_data_backup.sql

-- Explanation:
-- This command exports only the records stored in the
-- sales database without including table structures.
-- Data-only backups are useful when the destination
-- database tables already exist and only the records
-- need to be transferred.


-- ============================================
-- END OF WEEK 8 ASSIGNMENT
-- ============================================
