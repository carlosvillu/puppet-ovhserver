class ovhserver{
  Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ] }

  group {
    "puppet": 
     ensure => present
  }

  include ovhserver::resources::nodejs
  include ovhserver::resources::nginx-vhost

  class{ "mongodb":
    enable_10gen => true
  }

  class { "varnish":
    port => 80
  }
}
