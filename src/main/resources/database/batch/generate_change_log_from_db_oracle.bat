@ECHO ON
SETLOCAL
SET LIQUIBASE_HOME=D:\liquibase-3.5.1-bin
SET CHANGE_LOG_FILE=change_log_from_db_oracle.xml
SET DB_DRIVER=oracle.jdbc.OracleDriver
SET DB_HOST=192.168.5.159
SET DB_PORT=1521
SET DB_SID=crdmtest
SET DB_URL=jdbc:oracle:thin:@%DB_HOST%:%DB_PORT%:%DB_SID%
SET DB_USERNAME=crdm_xxx
SET DB_PASSWORD=crdm_xxx

CALL "%LIQUIBASE_HOME%\liquibase.bat" --classpath=%LIQUIBASE_HOME%\lib --changeLogFile=%CHANGE_LOG_FILE% --driver=%DB_DRIVER% --url=%DB_URL% --username=%DB_USERNAME% --password=%DB_PASSWORD% generateChangeLog
ECHO.

PAUSE
