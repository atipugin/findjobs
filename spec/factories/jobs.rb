FactoryGirl.define do
  factory :job, class: Findjobs::Job do
    title FFaker::Lorem.sentence
    url FFaker::Internet.http_url
    sequence :date do |n|
      Date.today - n
    end
  end
end
