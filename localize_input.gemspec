# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "localize_input/version"

Gem::Specification.new do |s|
  s.name        = "localize_input"
  s.version     = LocalizeInput::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["bennibu"]
  s.email       = ["bennibu@posteo.de"]
  s.homepage    = "http://github.com/bennibu/localize_input"
  s.summary     = %q{Rails plugin to localize numeric input of different languages into appropriate database format}
  s.description = %q{See summary}

  s.rubyforge_project = "localize_input"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
