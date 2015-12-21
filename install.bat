@echo off

echo install开始...

call mvn clean install -Dmaven.test.skip=true 

echo install完成

pause