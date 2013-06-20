# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'basin/version'

Gem::Specification.new do |spec|
  spec.name          = "basin"
  spec.version       = Basin::VERSION
  spec.authors       = ["Ben Pringle"]
  spec.email         = ["ben.pringle@gmail.com"]

  spec.description   = <<-EOF
    Basin provides a local web interface to track actions, projects,
    delegations, and ideas.
  EOF

  spec.summary       = "Store your thoughts in a silvery basin."
  spec.homepage      = "https://github.com/Pringley/basin"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
