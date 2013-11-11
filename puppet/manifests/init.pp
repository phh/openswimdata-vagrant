exec { 'apt_update':
  command => 'apt-get update',
  path    => '/usr/bin'
}

class { 'curl::install': }
class { 'git::install': }
class { 'apache2::install': }
class { 'php5::install': }
class { 'mysql::install': }

