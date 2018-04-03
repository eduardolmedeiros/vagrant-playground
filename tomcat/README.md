## tomcat vagrant sample

### 1. Install prerequisites

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


### Testing deployment

http://local-ip:8080/hello/
