#!/usr/bin/env ruby

require "#{File.dirname(File.realpath(__FILE__))}/config/application.rb"

require 'commander/import'
require 'yaml'

program :version, '0.0.1'
program :description, 'Collection of tasks to run over the Linode API'

global_option('-c','--config-file FILE', 'Configuration file with Linode api key (defaults to ~/.linode)')
 
command :'box-ips-for-ssh-config' do |c|
  c.syntax = 'linode-utils list-boxes [options]'
  c.summary = ''
  c.description = ''
  c.example 'description', 'Dumps the available box ip\'s into a .ssh/config format'
  c.when_called Commands::ListBoxes
end

