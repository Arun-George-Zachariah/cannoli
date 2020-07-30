#!/bin/bash

# Defining scala and adam version.
SCALA_VERSION=2.12
ADAM_VERSION=0.32.0

# Installing local adam core.
mvn install:install-file -Dfile=lib/adam-core-spark3_$SCALA_VERSION-$ADAM_VERSION-SNAPSHOT.jar -DgroupId=org.bdgenomics.adam -DartifactId=adam-core-spark3_$SCALA_VERSION -Dversion=$ADAM_VERSION -Dpackaging=jar

# Installing local adam cli.
mvn install:install-file -Dfile=lib/adam-cli-spark3_$SCALA_VERSION-$ADAM_VERSION-SNAPSHOT.jar -DgroupId=org.bdgenomics.adam -DartifactId=adam-cli-spark3_$SCALA_VERSION -Dversion=$ADAM_VERSION -Dpackaging=jar

# Building Cannoli.
mvn install