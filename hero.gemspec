# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "hero/version"

Gem::Specification.new do |s|
  s.name        = "hero"
  s.version     = Hero::VERSION
  s.authors     = ["Daniel Fone"]
  s.email       = ["daniel@fone.net.nz"]
  s.homepage    = ""
  s.summary     = %q{Autoscale Heroku processes}
  s.description = %q{Automatically scale delayed job workers and dynos based on current load}

  s.rubyforge_project = "hero"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'heroku',       '~> 2.4.0'
  s.add_dependency 'delayed_job',  '~> 2.1.4'
  s.add_dependency 'eventmachine', '~> 0.12.10'
end
