Dir[File.expand_path(File.dirname(__FILE__) + '/clients/*.rb')].each {|f| require f }
Dir[File.expand_path(File.dirname(__FILE__) + '/commands/**/*.rb')].each {|f| require f }
