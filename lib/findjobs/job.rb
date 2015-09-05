module Findjobs
  class Job
    include Virtus.model

    attribute :title, String
    attribute :url, String
    attribute :date, Date
  end
end
