PATH = %PATH%;c:\Program Files\Java\jdk1.8.0_181\bin

javac OSEC.java
jar cfe OSEC.jar OSEC *.class
del *.class
del "..\OSEC Parameter Configurator.jar"
move OSEC.jar "..\OSEC Parameter Configurator.jar"
pause
exit
