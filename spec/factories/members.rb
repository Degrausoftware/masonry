FactoryBot.define do
  factory :member do
    name { Faker::Name.name }
    # birth_date { Faker::Date.birthday(min_age: 18, max_age: 65) }
    place_of_birth { Faker::Nation.capital_city }
    state { Faker::Address.state }
    nationality { Faker::Nation.nationality }
    city {  Faker::Address.city }
    phone { Faker::PhoneNumber.phone_number_with_country_code }
    mobile_phone { Faker::PhoneNumber.cell_phone_with_country_code }
    email { Faker::Internet.email }
    relationship { Faker::Demographic.marital_status }
    wedding_date { Faker::Date.birthday(min_age: 18, max_age: 65) }
    # blood_type { Faker::Blood.type }
    fathers_name {  Faker::Name.name  }
    mothers_name {  Faker::Name.name  }
    cpf { Faker::IDNumber.brazilian_citizen_number(formatted: true) }
    degree_of_instruction { Faker::Educator.degree }
  end
end
