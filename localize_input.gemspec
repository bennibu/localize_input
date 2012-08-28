Gem::Specification.new do |s|
  s.name        = "localize_input"
  s.version     = '0.1.0'
  s.authors     = ["bennibu"]
  s.email       = ["bennibu@posteo.de"]
  s.homepage    = "http://github.com/bennibu/localize_input"
  s.summary     = "Localize your numbers!"
  s.description = "Rails plugin to localize numeric input of different languages into appropriate database format"

  s.files         = `git ls-files`.split("\n")
  s.require_paths = ["lib"]
end
