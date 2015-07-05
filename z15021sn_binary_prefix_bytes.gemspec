# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'z15021sn_binary_prefix_bytes/version'

Gem::Specification.new do |spec|
  spec.name          = "z15021sn_binary_prefix_bytes"
  spec.version       = Z15021snBinaryPrefixBytes::VERSION
  spec.authors       = ["z15021sn"]
  spec.email         = ["z15021sn@aiit.ac.jp"]

  spec.summary       = %q{Ruby String class extension. Binary prefix bytes to numerical value.}
  spec.description   = %q{This is a Ruby String class extension. It converts SI/IEC binary prefix bytes to numerical value.}
  spec.homepage      = "https://github.com/nkmrshn/z15021sn_binary_prefix_bytes"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "guard-minitest"
  spec.add_development_dependency "terminal-notifier-guard"
end
