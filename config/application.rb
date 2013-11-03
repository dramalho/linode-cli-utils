require 'rubygems'
require 'bundler'
Bundler.require(:default)

APP_ROOT = File.expand_path(File.dirname(__FILE__) + '/..') unless defined?(APP_ROOT)

Dir[File.join( APP_ROOT, 'app', '**', "*.rb" )].each {|file| require file}
