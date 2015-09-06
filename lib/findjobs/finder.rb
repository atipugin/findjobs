module Findjobs
  class Finder
    attr_reader :term, :location

    def initialize(term, location = nil)
      @term = term
      @location = location
    end

    def by_date
      by_date = {}
      h = find.group_by(&:date)
      h.keys.sort { |a, b| b <=> a }.each { |k| by_date[k] = h[k] }

      by_date
    end

    def find
      futures = Findjobs::Providers::AVAILABLE_PROVIDERS.map do |klass|
        klass.new(term, location).future(:search)
      end

      futures.map(&:value).flatten.sort { |a, b| b.date <=> a.date }
    end
  end
end
