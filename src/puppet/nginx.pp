$root = "/var/www"

include nginx

nginx::site { "puppet.uggedal.com":
  root => $root,
}

file {
  $root:
    ensure => directory;

  "${root}/index.html":
    source => "puppet:///modules/nginx/index.html",
    require => File[$root];
}
