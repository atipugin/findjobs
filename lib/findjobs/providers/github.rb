module Findjobs
  module Providers
    class Github < Base
      def url
        'https://jobs.github.com/positions.atom' \
        "?description=#{term}&location=#{location}"
      end
    end
  end
end
