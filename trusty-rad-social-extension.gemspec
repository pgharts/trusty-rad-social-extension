# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "trusty-rad-social-extension"

Gem::Specification.new do |s|
  s.name        = "trusty-rad-social-extension"
  s.version     = TrustyRadSocialExtension::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = TrustyRadSocialExtension::AUTHORS
  s.email       = TrustyRadSocialExtension::EMAIL
  s.homepage    = TrustyRadSocialExtension::URL
  s.summary     = TrustyRadSocialExtension::SUMMARY
  s.description = TrustyRadSocialExtension::DESCRIPTION

  # Define gem dependencies here.
  # Don't include a dependency on radiant itself: it causes problems when radiant is in vendor/radiant.
  # s.add_dependency "something", "~> 1.0.0"
  s.add_dependency "recaptcha", "~> 0.3.6"

  ignores = if File.exist?('.gitignore')
    File.read('.gitignore').split("\n").inject([]) {|a,p| a + Dir[p] }
  else
    []
  end
  s.files         = Dir['**/*'] - ignores
  s.test_files    = Dir['test/**/*','spec/**/*','features/**/*'] - ignores
  # s.executables   = Dir['bin/*'] - ignores
  s.require_paths = ["lib"]
end
