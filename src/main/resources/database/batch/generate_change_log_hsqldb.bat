@ECHO ON
SETLOCAL
SET LIQUIBASE_HOME=D:\liquibase-3.5.1-bin
SET CHANGE_LOG_FILE=change_log_from_db_hsqldb.xml
SET DB_DRIVER=org.hsqldb.jdbc.JDBCDriver
SET DB_HOST=localhost
SET DB_PORT=9001
SET DB_SID=crdm
SET DB_URL=jdbc:hsqldb:hsql://%DB_HOST%:%DB_PORT%/%DB_SID%
SET DB_USERNAME=CRDM
SET DB_PASSWORD=crdm

CALL "%LIQUIBASE_HOME%\liquibase.bat" --classpath=%LIQUIBASE_HOME%\lib --changeLogFile=%CHANGE_LOG_FILE% --driver=%DB_DRIVER% --url=%DB_URL% --username=%DB_USERNAME% --password=%DB_PASSWORD% generateChangeLog
ECHO.

PAUSE
