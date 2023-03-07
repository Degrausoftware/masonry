FactoryBot.define do
  factory :address do
    address { Faker::Address.street_address }
    city { Faker::Address.city }
    neighborhood { Faker::Address.community }
    state { Faker::Address.state }
    zip_code { Faker::Address.zip_code }
    member
  end
end
