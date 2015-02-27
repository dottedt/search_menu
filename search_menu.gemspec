# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'search_menu/version'

Gem::Specification.new do |spec|
  spec.name          = "search_menu"
  spec.version       = SearchMenu::VERSION
  spec.authors       = ["Scott"]
  spec.email         = ["scott@dottedt.com"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  end

 spec.summary       = %q{Finds combinations of dishes by fixed price.}
  spec.description   = %q{Finds any combination of dishes that add up exactly to the target price.}
  spec.homepage      = "https://github.com/dottedt/search_menu.git"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
