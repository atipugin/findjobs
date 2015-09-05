module Findjobs
  module Providers
    class AuthenticJobs < Base
      def url
        'https://authenticjobs.com/rss/custom.php' \
        "?terms=#{term}&location=#{location}"
      end
    end
  end
end
