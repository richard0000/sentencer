FactoryBot.define do
    factory :sentence do
      text { Faker::Lorem.sentence(word_count: 10) }
    end
  end