# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sink_utility/version'

Gem::Specification.new do |spec|
  spec.name          = "sink_utility"
  spec.version       = SinkUtility::VERSION
  spec.authors       = ["Grantlyk"]
  spec.email         = ["grant@nespite.io"]
  spec.description   = %q{Sink was inspired by the DDoS of github and was created to help keep its users secure in knowing that their repo is safer as it's shared among several hosting services rather than one}
  spec.summary       = %q{Sink is a command line tool created to sync your github to your bitbucket}
  spec.homepage      = "http://www.nespite.io"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = ["sink"]
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "ruby", "~> 2.0.0"
end