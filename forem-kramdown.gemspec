# -*- encoding: utf-8 -*-
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "forem-kramdown/version"

Gem::Specification.new do |gem|
  gem.name          = "forem-kramdown"
  gem.version       = Forem::Kramdown::VERSION
  gem.authors       = ["Phil Cohen"]
  gem.email         = ["github@phlippers.net"]
  gem.description   = "Provides Kramdown markup (with syntax highlighting by CodeRay) for Forem posts"
  gem.summary       = "Provides Kramdown markup (with syntax highlighting by CodeRay) for Forem posts"
  gem.homepage      = "http://phlippers.net/forem-kramdown"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "activesupport", ">= 3.1.0"
  gem.add_dependency "coderay",       "~> 1.0.8"
  gem.add_dependency "kramdown",      "~> 0.14.1"
  gem.add_dependency "nokogiri"

  gem.add_development_dependency "minitest",  "~> 4.3.0"
  gem.add_development_dependency "rake",      "~> 10.0.0"
end
