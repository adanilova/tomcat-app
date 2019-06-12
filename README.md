Sample Java application deploy
=====================

Demo of deploying [sample tomcat app](https://tomcat.apache.org/tomcat-8.0-doc/appdev/sample/) using Jenkins declarative pipeline (Jenkinsfile) into Docker container.

Steps:
* Build basic docker tomcat image (with Dockerfile provided)
* Run built docker image exposing tomcat app on port 8080.
* Ansible Jenkins role a [here](https://github.com/adanilova/ansible-jenkins/)
