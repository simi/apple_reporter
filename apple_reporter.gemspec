# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'apple_reporter/version'

Gem::Specification.new do |spec|
  spec.name          = 'apple_reporter'
  spec.version       = AppleReporter::VERSION
  spec.authors       = ['Dean Lin']
  spec.email         = ['iscreen@gmail.com']

  spec.summary       = %q{Apple iTunes Connect Reporter}
  spec.description   = %q{Apple iTunes Connect Reporter}
  spec.homepage      = 'https://github.com/iscreen/apple_reporter.git'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'rest-client'
  spec.add_runtime_dependency 'activesupport', '>= 3.0'
end
