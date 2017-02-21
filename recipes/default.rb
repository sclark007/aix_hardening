#
# Cookbook:: aix_hardening
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

## run CIS aixpert
# aixpert -f /etc/security/aixpert/custom/cis.xml

cookbook_file '/etc/security/aixpert/custom/cis.xml' do
  source 'cis.xml'
  owner 'root'
  group node['root_group']
  mode 00644
end

execute 'run_aixpert' do
  command 'aixpert -f /etc/security/aixpert/custom/cis.xml'
  action :run
end
