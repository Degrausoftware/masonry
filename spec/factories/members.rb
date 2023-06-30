# frozen_string_literal: true

# == Schema Information
#
# Table name: members
#
#  id                    :bigint           not null, primary key
#  admin                 :boolean
#  birth_date            :date
#  blood_type            :string
#  city                  :string
#  cpf                   :string
#  degree_of_instruction :string
#  email                 :string
#  fathers_name          :string
#  mobile_phone          :string
#  mothers_name          :string
#  name                  :string
#  nationality           :string
#  phone                 :string
#  place_of_birth        :string
#  relationship          :string
#  state                 :string
#  wedding_date          :date
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#
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
