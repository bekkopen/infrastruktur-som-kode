$hostname = "puppet.uggedal.com"
$root = "/var/www/${hostname}"

package { "nginx":
  ensure => present
}

service { "nginx":
  ensure => running,
  enable => true,
  require => Package["nginx"],
}

file {
  "/etc/nginx/sites-available/${hostname}.conf":
    content => template("vhost.conf.erb"),
    notify => Service["nginx"];

  "/etc/nginx/sites-enabled/${hostname}.conf":
    ensure => link,
    target => "/etc/nginx/sites-available/${hostname}.conf",
    require => File["/etc/nginx/sites-available/${hostname}.conf"],
    notify => Service["nginx"];

  "${root}":
    ensure => directory;

  "${root}/index.html":
    source => "index.html",
    require => File[$root];
}
