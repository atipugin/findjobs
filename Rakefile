require 'bundler/setup'
require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'

RSpec::Core::RakeTask.new(:spec)

RuboCop::RakeTask.new(:rubocop) do |task|
  task.fail_on_error = false
  task.options = %w(--force-exclusion)
  task.patterns = %w({lib,spec}/**/*.rb)
  task.requires << 'rubocop-rspec'
end

task default: %w(spec rubocop)
