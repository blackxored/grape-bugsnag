# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'grape/bugsnag/version'

Gem::Specification.new do |spec|
  spec.name          = "grape-bugsnag"
  spec.version       = Grape::Bugsnag::VERSION
  spec.authors       = ["Adrian Perez"]
  spec.email         = ["adrianperez.deb@gmail.com"]
  spec.summary       = %q{Notify of Grape errors with Bugsnag}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/blackxored/grape-bugsnag"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.required_ruby_version = '>= 2.0.0'

  spec.add_dependency "grape", "~> 0.6.1"
  spec.add_dependency "bugsnag", "~> 1.8.2"
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.14.1"
  spec.add_development_dependency "rack-test", '~> 0.6.2'
  spec.add_development_dependency "rr", '~> 1.1.2'
end
