#
# Cookbook:: postgresql
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#Installs PostgreSQL
package 'package-server' do
	notifies :run, 'execute[postresql-init]'
end

execute 'postgres-init' do
	command 'postgresql-setup initdb'
	action :nothing
end

service 'postgresql' do
	action [:enable, :start]
end
