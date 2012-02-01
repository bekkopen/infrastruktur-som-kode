nginx_site "chef.uggedal.com" do
  root "/var/www"
end

directory "/var/www" do
  mode "0755"
end

cookbook_file "/var/www/index.html" do
  source "index.html"
  mode "0644"
end
