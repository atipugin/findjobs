require 'findjobs/providers/base'
require 'findjobs/providers/github'
require 'findjobs/providers/stack_overflow'
require 'findjobs/providers/authentic_jobs'

module Findjobs
  module Providers
    AVAILABLE_PROVIDERS = [
      Findjobs::Providers::Github,
      Findjobs::Providers::StackOverflow,
      Findjobs::Providers::AuthenticJobs
    ]
  end
end
