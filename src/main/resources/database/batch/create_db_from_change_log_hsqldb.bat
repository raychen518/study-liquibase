@ECHO ON
SETLOCAL
SET LIQUIBASE_HOME=D:\liquibase-3.5.1-bin
SET CLASSPATH=%LIQUIBASE_HOME%\lib
SET CHANGE_LOG_FILE=../master.xml
SET DB_DRIVER=org.hsqldb.jdbc.JDBCDriver
SET DB_HOST=localhost
SET DB_PORT=9001
SET DB_SID=crdm
SET DB_URL=jdbc:hsqldb:hsql://%DB_HOST%:%DB_PORT%/%DB_SID%
SET DB_USERNAME=CRDM
SET DB_PASSWORD=crdm

CALL "%LIQUIBASE_HOME%\liquibase.bat" --classpath=%CLASSPATH% --changeLogFile=%CHANGE_LOG_FILE% --driver=%DB_DRIVER% --url=%DB_URL% --username=%DB_USERNAME% --password=%DB_PASSWORD% --logLevel=info update
ECHO.

PAUSE
