module Findjobs
  class Finder
    attr_reader :term, :options

    def self.default_options
      { location: nil, days: 0 }
    end

    def initialize(term, options = {})
      @term = term
      @options = self.class.default_options.merge(options)
    end

    def by_date
      Hash[
        find
          .group_by(&:date)
          .sort_by { |k, _| k }
          .reverse[0..options[:days].pred]
      ]
    end

    def find
      Findjobs::Providers::AVAILABLE_PROVIDERS
        .map { |k| k.new(term, options[:location]).search }
        .flatten
        .select { |j| j.date <= Date.today }
    end
  end
end
