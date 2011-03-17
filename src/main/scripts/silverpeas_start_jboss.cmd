@echo off

cd "%JBOSS_HOME%\server\default\deploy"

del silverpeas.ear.bak*
del silverpeas-ds.xml.bak*

cd "%JBOSS_HOME%\server\default\deploy\jms"

del silverpeas-destinations-service.xml.bak*

cd "%JBOSS_HOME%/bin"

rem Add Silverpeas Properties root repository to path
rem SET JBOSS_CLASSPATH=%SILVERPEAS_HOME%/properties
SET JAVA_OPTS=-server -Xms512m -Xmx512m -XX:MaxPermSize=256m -Dorg.jboss.logging.Log4jService.catchSystemOut=false

SET PROFILE=default
call run.bat -c %PROFILE%

if ERRORLEVEL 1 pause
