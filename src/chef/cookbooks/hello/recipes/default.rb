nginx_site "chef.uggedal.com" do
  root "/var/www"
end

cookbook_file "/var/www/index.html" do
  source "index.html"
end
