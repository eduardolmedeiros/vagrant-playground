## tomcat vagrant sample

This is a sample tomcat vagrant configuration managed by puppet provision and r10k plugin to manage the puppet modules.

### 1. Install prerequisites (host side)

Vagrant:

```
{dnf|yum|apt} install vagrant
```

Vagrant plugins:

```
vagrant plugin install vagrant-puppet-install
vagrant plugin install vagrant-r10k
vagrant plugin install puppet
vagrant plugin install vagrant-vbguest
```

### 2. Clone repository

```
git clone https://github.com/eduardolmedeiros/vagrant-playground.git
cd tomcat
vagrant up
```

### 3. Configuration and settings

Check the file:

```
manifest/tomcat.pp
```

Variables:

```
# variables

$java_version = "java-1.8.0-openjdk"
$tomcat_version = "9"
$tomcat_release = "9.0.6"
$instance_name = "app1"
$package = "hello.war"
$package_source_url = "https://github.com/eduardolmedeiros/vagrant-playground/raw/master/tomcat/deploy/hello.war"
```

### Testing deployment

http://local-ip:8080/hello/


### Provision

needed for changes and updates:

```
vagrant provision
```
