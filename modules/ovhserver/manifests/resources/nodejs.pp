class ovhserver::resources::nodejs{
  package { ["python", "g++", "make"]:
    ensure => latest
  }
  
  apt::ppa { 'ppa:chris-lea/node.js': 
    notify => [ Package['nodejs'], Exec[ 'apt-get update' ]]
  }

  exec{ 
    'apt-get update': 
    cwd => '/',
  }

  package { "nodejs": 
    require => Exec['apt-get update'],
    ensure  => latest
  }
}
