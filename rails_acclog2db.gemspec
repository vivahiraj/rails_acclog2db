$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_acclog2db/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_acclog2db"
  s.version     = RailsAcclog2db::VERSION
  s.authors     = ["vivahiraj"]
  s.email       = ["vivahiraj@gmail.com"]
  s.homepage    = "https://github.com/vivahiraj/rails_acclog2db"
  s.summary     = "rails access log save to database."
  s.description = "rails access log save to database."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.16"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency 'ammeter'
end
