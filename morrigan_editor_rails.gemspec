$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "morrigan_editor_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "morrigan_editor_rails"
  s.version     = MorriganEditorRails::VERSION
  s.authors     = ["Sergey Sokolov"]
  s.email       = ["sokolov.sergey.a@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of MorriganEditorRails."
  s.description = "TODO: Description of MorriganEditorRails."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.4"

  s.add_development_dependency "sqlite3"
end
