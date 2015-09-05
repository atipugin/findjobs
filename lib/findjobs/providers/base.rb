module Findjobs
  module Providers
    class Base
      include Celluloid

      attr_reader :term, :location

      def initialize(term, location = nil)
        @term = term
        @location = location
      end

      def search
        Feedjira::Feed.fetch_and_parse(url).entries.map do |entry|
          Findjobs::Job
            .new(
              title: entry.title,
              url: entry.url,
              date: entry.published || entry.updated
            )
        end
      end

      def url
        fail NotImplementedError, 'You need to implement this method first.'
      end
    end
  end
end
