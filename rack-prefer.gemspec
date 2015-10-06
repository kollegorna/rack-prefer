# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rack/prefer/version'

Gem::Specification.new do |spec|
  spec.name          = "rack-prefer"
  spec.version       = Rack::Prefer::VERSION
  spec.authors       = ["Filippos Vasilakis", "Kollegorna"]
  spec.email         = ["vasilakisfil@gmail.com", "admin@kollegorna.se"]

  spec.summary       = %q{Simple gem that parses the HTTP prefer header.}
  spec.description   = %q{Simple gem that parses the HTTP prefer header.}
  spec.homepage      = "https://github.com/kollegorna/rack-prefer"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
