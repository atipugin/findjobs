module Findjobs
  module Providers
    class StackOverflow < Base
      def url
        'https://careers.stackoverflow.com/jobs/feed' \
        "?searchTerm=#{term}&location=#{location}&range=20&distanceUnits=Miles"
      end
    end
  end
end
