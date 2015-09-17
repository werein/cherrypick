$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "cherrypick/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "cherrypick"
  s.version     = Cherrypick::VERSION
  s.authors     = ["We're in s.r.o", "Jiri Kolarik"]
  s.email       = ["jiri.kolarik@wereinhq.com"]
  s.homepage    = "https://wereinhq.com/guides/cherrypick"
  s.summary     = "Cherrypick what do you need for your app and don't write it again."
  s.description = "Set of mixins, services and helpers for Rails as an Engine."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 4.0.0"

  s.add_development_dependency "minitest-spec-rails"
  s.add_development_dependency "mocha"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "responders", "~> 2.0"
  s.add_development_dependency "codeclimate-test-reporter"
end
