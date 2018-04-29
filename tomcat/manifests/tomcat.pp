node default {

  # variables
  $java_version = "java-1.8.0-openjdk"
  $tomcat_version = "9"
  $tomcat_release = "9.0.7"
  $instance_name = "app1"
  $package = "hello.war"
  $package_source_url = "https://github.com/eduardolmedeiros/vagrant-playground/raw/master/tomcat/deploy/hello.war"

  # Install Java
  package  { $java_version:
    ensure => present,
  }

  # Install Tomcat
  ->  tomcat::install { "/opt/tomcat-${tomcat_release}":
  	    source_url => "http://apache.hippo.nl/tomcat/tomcat-${tomcat_version}/v${tomcat_release}/bin/apache-tomcat-${tomcat_release}.tar.gz"
      }

  # symlink
  ->  file { '/opt/tomcat':
        ensure => "/opt/tomcat-${tomcat_release}",
      }

  # Create instance
  tomcat::instance { "tomcat-${instance_name}":
    catalina_home => "/opt/tomcat",
    catalina_base => "/opt/tomcat/${instance_name}",
  }

  # Deploy hello.war
  tomcat::war { $package:
    catalina_base => "/opt/tomcat/${instance_name}",
    war_source    => $package_source_url,
  }

}
