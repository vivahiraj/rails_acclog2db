$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_acclog2db/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_acclog2db"
  s.version     = RailsAcclog2db::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of RailsAcclog2db."
  s.description = "TODO: Description of RailsAcclog2db."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.16"

  s.add_development_dependency "sqlite3"
end
