nginx_site "chef.uggedal.com" do
  root "/var/www"
end

directory "/var/www"

cookbook_file "/var/www/index.html" do
  source "index.html"
end
