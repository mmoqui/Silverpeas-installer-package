@echo off

set CLASSPATH=${classpath}

java -classpath "%CLASSPATH%" -Ddbbuilder.home="%SILVERPEAS_HOME%" org.silverpeas.setup.dbbuilder.migration.contentmanagement.DuplicateContentRemovingApplication

echo.

pause
