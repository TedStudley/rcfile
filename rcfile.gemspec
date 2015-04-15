# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rcfile/version'

Gem::Specification.new do |spec|
  spec.name          = "rcfile"
  spec.version       = Rcfile::VERSION
  spec.authors       = ["Ted Studley"]
  spec.email         = ["tedstudley@gmail.com"]

  spec.summary       = %q{A simple ruby gem for creating powerful rupy REPL *rc files.}
  spec.homepage      = "http://github.com/TedStudley/rcfile"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
