FactoryBot.define do
    factory :entity_type do
      name { Faker::Alphanumeric.alpha(number: 4) }
    end
  end