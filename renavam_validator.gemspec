# frozen_string_literal: true

require_relative 'lib/renavam_validator/version'

Gem::Specification.new do |spec|
  spec.name          = 'renavam_validator'
  spec.version       = RenavamValidator::VERSION
  spec.authors       = ['David Silveira']
  spec.email         = ['contact@dsilveira.eti.br']

  spec.summary       = 'Simple and small data validator'
  spec.description   = 'The renavam validator is a simple and small data validator for Brazilian vehicle documents.'
  spec.homepage      = 'https://github.com/davidsilveira/renavam_validator'
  spec.license       = 'MIT'
  spec.required_ruby_version = '>= 2.5.0'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/davidsilveira/renavam_validator'
  spec.metadata['changelog_uri'] = 'https://github.com/davidsilveira/renavam_validator/CHANGELOG.md'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
