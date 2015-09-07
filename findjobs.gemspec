# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'findjobs/version'

Gem::Specification.new do |spec|
  spec.name          = "findjobs"
  spec.version       = Findjobs::VERSION
  spec.authors       = ["Alexander Tipugin"]
  spec.email         = ["atipugin@gmail.com"]

  spec.summary       = %q{Simple CLI to help you find your next job.}
  spec.homepage      = "https://github.com/atipugin/findjobs"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec', '~> 3.3.0'
  spec.add_development_dependency 'aruba', '~> 0.9.0'
  spec.add_development_dependency 'rubocop', '~> 0.34.0'
  spec.add_development_dependency 'rubocop-rspec', '~> 1.3.1'
  spec.add_development_dependency 'pry', '~> 0.10.1'
  spec.add_development_dependency 'factory_girl', '~> 4.5.0'
  spec.add_development_dependency 'ffaker', '~> 2.1.0'
  spec.add_development_dependency 'rspec-collection_matchers', '~> 1.1.2'

  spec.add_dependency 'commander', '~> 4.3.5'
  spec.add_dependency 'feedjira', '~> 2.0.0'
  spec.add_dependency 'virtus', '~> 1.0.5'
  spec.add_dependency 'colorize', '~> 0.7.7'
end
