#
# Cookbook Name:: hellochef
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

two=1+1

file "/tmp/something1" do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

file '/etc/motd' do
  content 'hello chef!'
end

file '/tmp/shouldnotexist' do
  action :delete
end


user 'ralph' do
  action :create
  not_if "grep ralph /etc/passwd"
end
