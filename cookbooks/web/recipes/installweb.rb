package 'httpd'
package 'mysql'
package 'php'
package 'php-mysql'
service 'httpd' do
   action [:enable,:start]
end

bash 'open port' do
  code <<-EOH
  iptables -I INPUT 5 -p tcp -m state --state NEW -m tcp --dport 80 -j ACCEPT
  service iptables save
  EOH
end

template '/var/www/html/index.html' do
 source 'index.html.erb'
 mode 0644
 variables(
  usuario: node[:web][:usuario],
  ip: node[:web][:ip],
  password: node[:web][:password],
  titulo: node[:web][:titulo]
)
end

template '/var/www/html/info.php' do
 source 'info.php.erb'
 mode 0644
end
 
template '/var/www/html/select.php' do
 source 'select.php.erb'
 variables(
  usuario: node[:web][:usuario],
  ip: node[:web][:ip],
  id: node[:web][:id],
  password: node[:web][:password]
)
end

