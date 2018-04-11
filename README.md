# Ansible Ubuntu 17.10
Ansible roles to setup Ubuntu desktop 17.10. This playbook is focused on quickly deploying a "ready to use" dev machine.


## Requirements
- Git
- Ansible 2+ (automatically installed from [Ansible offical Documentation ](http://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html?#latest-releases-via-apt-ubuntu))


## Installation
First, you need to install Git and Ansible :

### ansible Installation
```
$ sudo apt-get update
$ sudo apt-get install software-properties-common
$ sudo apt-add-repository ppa:ansible/ansible
$ sudo apt-get update
$ sudo apt-get install ansible
```
### Git Installation
```
$ sudo apt-get update
$ sudo apt-get install git-core
```

Then you need to customize the playbook /Ansible_Ubuntu_17/vars/`all.yml` (or create a new one) to suit your needs. Every roles are disabled by default.

Run `ansible-playbook ansible-desktop.yml --ask-become-pass` and enter your sudo password to run the playbook

## Roles included

| Role                     | Description                                                                                                                                                                                                                                                                                                                           |
| ------------------------ | ----------------------------------------------------------------------------------------- |
| **Basis**                |                                                                                           |
| proxy                    | If you have a proxy                                                                       |
| desktop-cleanup          | Remove the unnecessary stuffs                                                             |
| desktop-preferences      | Custom Desktop                                                                            |
| wallpaper                | If you want set a default Wallpaper                                                                                          |
| **Developement**         |                                                                                           |
| angular-cli              |  [Angular CLI](https://cli.angular.io/) Angular CLI stands for Angular Command Line Interface. As the name implies, it is a command line tool for creating angular apps.                                                                  |
| atom                     |  [atom](https://atom.io/)  is a free and open-source text and source code editor for macOS, Linux, and Microsoft Windows with support for plug-ins written in Node.js, and embedded Git Control, developed by GitHub.                                                                        |
| curl                     |  [cURL](https://curl.haxx.se/) is a computer software project providing a library and command-line tool for transferring data using various protocols.                                                               |
| docker                   |  [Docker](https://www.docker.com/) is a computer program that performs operating-system-level virtualization also known as containerization.                                                                |
| intellij                 |  [IntelliJ IDEA](https://www.jetbrains.com/idea/ )   https://www.jetbrains.com/idea/  IntelliJ IDEA is a Java integrated development environment (IDE) for developing computer software.                                                       |
| java                     |  [JAVA](http://www.oracle.com/technetwork/java/javase/overview/index.html )  JAVA Development Kit (JDK) is an implementation of either one of the Java Platform, Standard Edition, Java Platform, Enterprise Edition, or Java Platform,                      |
| kitematic                |  [Kitematic](https://kitematic.com/  )'s one click install gets Docker running on your Mac and lets you control your app containers from a graphical user interface (GUI).                                                               |
| maven                    |   [Maven](https://maven.apache.org/) is a build automation tool used primarily for Java projects. In Yiddish, the word maven means "accumulator of knowledge".                                                              |
| nodejs                   |   [Node.js](https://nodejs.org/) is an open-source, cross-platform JavaScript run-time environment that executes JavaScript code server-side.                                                                   |
| soapui                   |   [SoapUI](https://www.soapui.org/) is an open-source web service testing application for service-oriented architectures (SOA) and representational state transfers (REST).                                                               |
| sqlDeveloper             |  [Oracle SQL Developer](http://www.oracle.com/technetwork/developer-tools/sql-developer/overview/index.html) is an Integrated development environment (IDE) for working with SQL in Oracle databases.   |
| tomcat                   |   [Apache Tomcat](http://tomcat.apache.org/), often referred to as Tomcat Server, is an open-source Java Servlet Container developed by the Apache Software Foundation (ASF).                                                             |
| webpack                  |   [Webpack](https://webpack.js.org/) is an open-source JavaScript module bundler.                                                              |

