# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name        = "linode-cli-utils"
  s.version     = "0.0.1"
  s.authors     = ["David Ramalho"]
  s.email       = ["david@ragingnexus.com"]
  s.license     = "MIT"
  s.homepage    = "https://github.com/dramalho/linode-cli-utils"
  s.summary     = "Personal collection of linode related tasks"
  s.description = "Personal collection of linode related tasks"

  s.files         = `git ls-files`.split("\n")
  # s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency("linode")
  s.add_runtime_dependency("commander")
  
  s.add_development_dependency("rspec", "~> 2")
end
