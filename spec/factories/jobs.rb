FactoryGirl.define do
  factory :job, class: Findjobs::Job do
    title FFaker::Lorem.sentence
    url FFaker::Internet.http_url
    date Date.today
  end
end
