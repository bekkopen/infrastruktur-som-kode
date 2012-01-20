define nginx::site($root) {
  $hostname = $name

  file {
    "/etc/nginx/sites-available/${hostname}.conf":
      content => template("nginx/site.conf.erb"),
      notify => Service["nginx"];

    "/etc/nginx/sites-enabled/${hostname}.conf":
      ensure => link,
      target => "/etc/nginx/sites-available/${hostname}.conf",
      require => File["/etc/nginx/sites-available/${hostname}.conf"],
      notify => Service["nginx"];
  }
}
