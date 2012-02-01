define :nginx_site, :root => "/dev/null" do

  template "/etc/nginx/sites-available/#{params[:name]}.conf" do
    source "site.conf.erb"
    variables(
      :hostname => params[:name],
      :root => params[:root]
    )
    cookbook "nginx"
  end

  link "/etc/nginx/sites-enabled/#{params[:name]}.conf" do
    to "/etc/nginx/sites-available/#{params[:name]}.conf"
    notifies :restart, resources(:service => "nginx")
  end

end
