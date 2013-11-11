# Install PHP

class php5::install {

  package { [
      'php5',
      'php5-mysql',
      'php5-curl',
      'php5-gd',
	  'php5-imagick',
      'php5-fpm',
	  'php5-memcached',
      'libapache2-mod-php5',
    ]:
    ensure => present,
  }

}