FactoryBot.define do
  factory :post do
    title { Faker::Lorem.sentence }
    description { Faker::Lorem.sentences(number: rand(2..5)).join(' ') }
    created_at { Faker::Date.between(from: 2.month.ago, to: Date.today) }
  end
end
