-- Contents
---- Dropping Tables
---- Creating a User

----------------------------------------
-- Dropping Tables
----------------------------------------
DROP TABLE IF EXISTS DATABASECHANGELOG CASCADE;
DROP TABLE IF EXISTS DATABASECHANGELOGLOCK CASCADE;
DROP TABLE IF EXISTS TABLE_A CASCADE;
DROP TABLE IF EXISTS TABLE_B CASCADE;
DROP TABLE IF EXISTS TABLE_C CASCADE;

----------------------------------------
-- Creating a User
----------------------------------------
CREATE USER RAYCHEN PASSWORD 'a1b2c3d4' ADMIN;
