FactoryBot.define do
  factory :recomendation do
    father_mason { [true, false].sample }
    mobile_phone { Faker::PhoneNumber.cell_phone_with_country_code }
    name { Faker::Name.name }
    member
  end
end
