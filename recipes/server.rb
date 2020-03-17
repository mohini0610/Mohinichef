#
# Cookbook:: apache
# Recipe:: server
#
# Copyright:: 2020, The Authors, All Rights Reserved.

package 'httpd' do
 action :install
end

file '/var/www/index.html' do
 content '<h1>Hello,world!</h1>'
end

service 'httpd' do
 action [ :enable , :start ]
end 
