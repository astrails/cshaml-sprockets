# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "cshaml-sprockets/version"

Gem::Specification.new do |s|
  s.name        = "cshaml-sprockets"
  s.version     = Cshaml::Sprockets::VERSION
  s.authors     = ["Boris Nadion"]
  s.email       = ["boris@astrails.com"]
  s.homepage    = "https://github.com/astrails/cshaml-sprockets"
  s.summary     = %q{Use the awesome https://github.com/uglyog/clientside-haml-js javascript templating lib in Ruby}
  s.description = %q{Use the JST processor and have haml code read in and appended to application.js}

  s.rubyforge_project = "cshaml-sprockets"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  s.add_runtime_dependency "tilt", "~> 1.3"
  s.add_runtime_dependency "sprockets", "~> 2.11"

  s.add_development_dependency 'rspec'
end
