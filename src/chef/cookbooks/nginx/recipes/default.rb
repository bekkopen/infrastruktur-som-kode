package "nginx"

service "nginx" do
  supports :status => true, :restart => true
  action [ :enable, :start ]
end

file "/etc/nginx/sites-enabled/default" do
  action :delete
  notifies :restart, resources(:service => "nginx")
end
