# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'xlib/xinput2/version'

Gem::Specification.new do |spec|
  spec.name          = "xlib-xinput2"
  spec.version       = Xlib::XInput2::VERSION
  spec.authors       = ["Christopher Aue"]
  spec.email         = ["mail@christopheraue.net"]

  spec.summary       = 'Interface to Xlib XInput extensions Version 2'
  spec.homepage      = "https://github.com/christopheraue/ruby-xlib-xinput2"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "ffi-swig-generator", '~> 0'
  spec.add_runtime_dependency 'xlib', '~> 1.1'
end
