@ECHO ON
SETLOCAL
SET LIQUIBASE_HOME=D:\liquibase-3.5.1-bin
SET CHANGE_LOG_FILE=change_log_from_db_postgresql.xml
SET DB_DRIVER=org.postgresql.Driver
SET DB_HOST=localhost
SET DB_PORT=5432
SET DB_SID=CRDM
SET DB_URL=jdbc:postgresql://%DB_HOST%:%DB_PORT%/%DB_SID%
SET DB_USERNAME=postgres
SET DB_PASSWORD=admin

CALL "%LIQUIBASE_HOME%\liquibase.bat" --classpath=%LIQUIBASE_HOME%\lib --changeLogFile=%CHANGE_LOG_FILE% --driver=%DB_DRIVER% --url=%DB_URL% --username=%DB_USERNAME% --password=%DB_PASSWORD% generateChangeLog
ECHO.

PAUSE
