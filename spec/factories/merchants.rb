FactoryBot.define do
  factory :merchant, class: Merchant do
    association :transaction, factory: :transaction, dependency: :delete
    name { Faker::Name.name }
    email { Faker::Internet.email(name: name) }}

    created_at { Time.zone.now }
    updated_at { Time.zone.now }
  end
end