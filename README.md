# Moodle on CentOS7

The main intent of this repository is for developers of Moodle to rapidly create a local instance of Moodle. 

This project contains [Vagrant](https://www.vagrantup.com/) and [Ansible](http://www.ansible.com/) scripts to provision [CentOS7](https://www.centos.org/) machines with [Moodle](https://moodle.org/). 

This LearningLocker installation will depend on [Apache2](http://httpd.apache.org/) and [MariaDB](https://mariadb.org/).

## Configuration

1. Copy _vars.secret.yml.edit_ file to  _vars.secret.yml_.
2. Edit the _vars.secret.yml_ file following the instructions detailed in the file.
3. Modify the moodle file in the _group\_vars_ directory by specifying the mdl_repo and mdl_repo_version.

If you need to use a proxy, please see the _proxy_ fork of this repository.

## Typical usage

This section explains one use case of this project:

 1. Create one VM machine with Moodle installed.

### Use case 1. Create one VM machine

To create a virtual machine and provision it with Moodle, simply run:

    vagrant up

If the installation is completed successfully, you will be able to:

 * Access Moodle through your web browser: http://localhost:8083
 * Finalize the Moodle installation process
 * Connect to the machine: ```vagrant ssh```
