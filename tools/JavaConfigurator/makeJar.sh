#!/bin/bash

javac -d . src/OSEC.java
jar cfe OSEC.jar OSEC *.class
rm *.class
rm "../../OSEC Parameter Configurator.jar"
mv OSEC.jar "../../OSEC Parameter Configurator.jar"

