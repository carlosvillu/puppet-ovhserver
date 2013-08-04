class ovhserver::resources::nginx-vhost {
  class { 'nginx': }
  nginx::resource::upstream { 'yourvids_co':
    ensure  => present,
    members => [
     'localhost:3000'
    ],
  }

  nginx::resource::vhost { 'yourvids.co':
    ensure   => present,
    proxy  => 'http://yourvids_co',
    listen_port => 8080
  }
} 
