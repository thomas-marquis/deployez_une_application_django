CREATE DATABASE disquairedb;
CREATE USER discman WITH PASSWORD 'Admin_13345!?';
ALTER ROLE discman SET client_encoding TO 'utf8';
ALTER ROLE discman SET default_transaction_isolation TO 'read committed';
ALTER ROLE discman SET timezone TO 'Europe/Paris';
GRANT ALL PRIVILEGES ON DATABASE disquairedb TO discman;
