class nginx {
  package { "nginx":
    ensure => present
  }

  service { "nginx":
    ensure => running,
    enable => true,
    require => Package["nginx"],
  }

  file { "/etc/nginx/sites-enabled/default":
    ensure => absent,
    notify => Service["nginx"],
  }
}
