# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wreck/version'

Gem::Specification.new do |spec|
  spec.name          = "wreck"
  spec.version       = Wreck::VERSION
  spec.authors       = ["Jon Burgess"]
  spec.email         = ["jkburges@gmail.com"]

  spec.summary       = "Wreck your server to make your client strong"
  spec.description   = "Chaos Monkey for ruby web servers"
  spec.homepage      = "https://github.com/jkburges/wreck"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rack", "~> 2.0"

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
