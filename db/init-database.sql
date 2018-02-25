-- INSTRUCTIONS:
--
-- 1. Search and replace "flymydb" for your own database name
-- 2. Fix build.gradle user, password and database name

CREATE DATABASE IF NOT EXISTS `flymydb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;

-- Flywaydb user
drop user if exists `flymydbadmin`@'127.0.0.1';
drop user if exists `flymydbadmin`@'%';

create user `flymydbadmin`@'127.0.0.1' IDENTIFIED BY '123myflymydb987';
create user `flymydbadmin`@'%' IDENTIFIED BY '123myflymydb987';

GRANT ALL PRIVILEGES ON flymydb.* to flymydbadmin@'127.0.0.1';
GRANT ALL PRIVILEGES ON flymydb.* to flymydbadmin@'%';

flush privileges;

# Development User
drop user if exists `usrflymydb`@'localhost';
drop user if exists `usrflymydb`@'%';

create user 'usrflymydb'@'localhost' IDENTIFIED BY 'development1234qwer';
create user 'usrflymydb'@'%' IDENTIFIED BY 'development1234qwer';

GRANT ALL PRIVILEGES ON flymydb.* to 'usrflymydb'@'localhost';
GRANT ALL PRIVILEGES ON flymydb.* to 'usrflymydb'@'%';

flush privileges;