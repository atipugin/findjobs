module Findjobs
  class Finder
    attr_reader :term, :location

    def initialize(term, location = nil)
      @term = term
      @location = location
    end

    def find
      futures = Findjobs::Providers::AVAILABLE_PROVIDERS.map do |klass|
        klass.new(term, location).future(:search)
      end

      futures.map(&:value).flatten.sort { |a, b| b.date <=> a.date }
    end
  end
end
