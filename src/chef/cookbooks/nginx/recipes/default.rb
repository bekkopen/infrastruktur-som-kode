package "nginx"

file "/etc/nginx/sites-enabled/default" do
  action :delete
  notifies :restart, resources(:service => "nginx")
end

service "nginx" do
  supports :status => true, :restart => true
  action [ :enable, :start ]
end
