APP_ROOT = File.expand_path(File.dirname(__FILE__) + '/..') unless defined?(APP_ROOT)

Dir[File.join( APP_ROOT, 'lib', '**', "*.rb" )].each {|file| require file}
