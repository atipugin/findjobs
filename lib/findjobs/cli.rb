module Findjobs
  class Cli
    include Commander::Methods

    def run
      program :name, 'findjobs'
      program :version, Findjobs::VERSION
      program :description, 'Simple CLI to help you find your next job.'

      run!
    end
  end
end
