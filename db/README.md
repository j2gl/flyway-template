# Database Migration

First run do:
1. Update init-database.sql with your own data and run the following
```sh
$ mysql -u root -p -h 127.0.0.1 < init-database.sql 
```
2. Run the migration, see below.

## Running Migrations

### 1. Migrating
```sh
$ gradle flywayMigrate 
```

### 2. Cleaning DB or Reset
```sh 
$ gradle flywayClean
```

### 3. Running Both
```sh 
$ ./build-db.sh
```
