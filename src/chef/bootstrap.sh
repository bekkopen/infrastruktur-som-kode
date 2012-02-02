#!/bin/sh

set -e

. ./../hostname.sh
set_hostname="chef.uggedal.com"

echo "deb http://apt.opscode.com/ squeeze-0.10 main" > /etc/apt/sources.list.d/opscode.list

apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 83EF826A

apt-get update

echo "chef chef/chef_server_url string none" | debconf-set-selections
apt-get install -qy chef

cat > /etc/chef/solo.rb << 'EOF'
file_cache_path "/root/infrastruktur-som-kode/src/chef"
cookbook_path "/root/infrastruktur-som-kode/src/chef/cookbooks"
json_attribs "/root/infrastruktur-som-kode/src/chef/node.json"
EOF
