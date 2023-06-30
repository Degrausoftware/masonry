# frozen_string_literal: true

# == Schema Information
#
# Table name: masonic_lodges
#
#  id                           :bigint           not null, primary key
#  address                      :string
#  blazon                       :string
#  city                         :string
#  cnpj                         :string
#  code_zip                     :string
#  correspoding_address         :string
#  country                      :string
#  decree_creation_of_the_store :string
#  email                        :string
#  founding_date                :date
#  meeting                      :date
#  mobile_phone                 :string
#  name                         :string
#  nationality                  :string
#  note                         :string
#  phone                        :string
#  pontency                     :string
#  responsible                  :string
#  rite                         :string
#  state                        :string
#  store_number                 :string
#  venerable                    :string
#  web_site                     :string
#  created_at                   :datetime         not null
#  updated_at                   :datetime         not null
#
FactoryBot.define do
  factory :masonic_lodge do
    name { Faker::Name.name }
    address { Faker::Address.street_address }
    correspoding_address { Faker::Address.street_address }
    city { Faker::Address.city }
    state { Faker::Address.state }
    nationality { Faker::Nation.nationality }
    code_zip { Faker::Address.zip_code }
    mobile_phone { Faker::PhoneNumber.cell_phone_with_country_code }
    phone { Faker::PhoneNumber.phone_number_with_country_code }
    responsible { Faker::Name.name }
    email { Faker::Internet.email }
    web_site { Faker::Internet.url(host: 'example.com') }
    rite { Faker::Company.name }
    meeting { Faker::Date.forward(days: 23) }
    pontency { Faker::Company.name }
    store_number { Faker::Number.number(digits: 2) }
    venerable { Faker::Name.name }
    note { Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false) }
    blazon { 'MyString' }
    decree_creation_of_the_store { 1000.days.from_now }
    country { Faker::Nation.nationality }
    founding_date { Faker::Date.between(from: '2014-09-23', to: '2014-09-25') }
    cnpj { Faker::IDNumber.brazilian_citizen_number(formatted: true) }
  end
end
