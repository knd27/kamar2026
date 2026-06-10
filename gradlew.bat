@rem Gradle startup script for Windows
@if "%DEBUG%" == "" @echo off
set APP_NAME=Gradle
set CLASSPATH=%APP_HOME%\gradle\wrapper\gradle-wrapper.jar
java -classpath %CLASSPATH% org.gradle.wrapper.GradleWrapperMain %*
