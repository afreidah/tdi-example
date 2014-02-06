#
# Cookbook Name:: irc
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
user 'tdi' do
  action :create
  comment 'Test Driven Infrastructure Book'
  home '/home/tdi'
  supports :manage_home => true
  shell '/bin/bash'
end

package 'irssi' do
  action :install
end

directory '/home/tdi/.irssi' do
  owner 'tdi'
  group 'tdi'
  action :create
end

cookbook_file 'config' do
  path '/home/tdi/.irssi/config'
  owner 'tdi'
  group 'tdi'
  action :create_if_missing
end
