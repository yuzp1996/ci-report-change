# SonarQube Maven Demo
This example demonstrates how to collect code coverage by integration tests, tests are located in a separate Java Maven module.
SonarQube aggregates code coverage by unit tests and integration tests to compute an overall code coverage.

Prerequisites
=============
* [SonarQube](http://www.sonarqube.org/downloads/) 5.6+
* Maven 3+

Usage
=====
* Build the project, execute all the tests and analyze the project with SonarQube Scanner for Maven:

        mvn clean install sonar:sonar

Docker image
=====
https://github.com/dockerq/docker-sonar-maven

## build config
```shell
mvn clean:install
mvn jacoco:report

cp -r src $ALAUDACI_UPLOAD_DIR/src
cp -r target $ALAUDACI_UPLOAD_DIR/targetall

python incoco/incoco.py -m git -p $PWD/src -r78a71
mvn jacoco:report
cp -r target $ALAUDACI_UPLOAD_DIR/targetalpha
cp -r incoco $ALAUDACI_UPLOAD_DIR/incoco

cp Dockerfile $ALAUDACI_DIST_DIR
cp run.sh $ALAUDACI_DIST_DIR

cp -r target/*.jar $ALAUDACI_UPLOAD_DIR
```