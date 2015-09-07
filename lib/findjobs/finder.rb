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
      Findjobs::Providers::AVAILABLE_PROVIDERS
        .map { |k| k.new(term, location).future(:search) }
        .map(&:value)
        .flatten
        .select { |j| j.date <= Date.today }
    end
  end
end
