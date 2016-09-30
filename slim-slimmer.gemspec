# frozen_string_literal: true
# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'slim/slimmer/version'

Gem::Specification.new do |spec|
  spec.name          = 'slim-slimmer'
  spec.version       = Slim::Slimmer::VERSION
  spec.authors       = ['neilang']
  spec.email         = ['neilang@gmail.com']

  spec.summary       = 'Slim, only slimmer!'
  spec.description   = 'Slim, only slimmer!'
  spec.homepage      = 'https://github.com/neilang/slim-slimmer'

  raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.' unless spec.respond_to?(:metadata)

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.3.0'

  spec.add_dependency 'slim', '~> 3.0'

  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop'
end
