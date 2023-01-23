FactoryBot.define do
    factory :entity do
      text { Faker::Lorem.words(number: 2).join(' ') }
      entity_type
    end
  end