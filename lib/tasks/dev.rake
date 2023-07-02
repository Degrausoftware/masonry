# frozen_string_literal: true

namespace :dev do
  desc 'Configura o ambiente de desenvolvimento'
  task setup: :environment do
    puts 'Resetando o banco de dados...!...!....!...!...!'
    puts 'Finalizando o reset banco de dados...!...!....!...!...!'
    puts '*********************************************'
    p 'cadastrando os dados do sistema'
    puts '***********************Loja**********************'
    10.times do |_i|
      MasonicLodge.create!(
        name: Faker::Name.name,
        address: Faker::Address.street_address,
        correspoding_address: Faker::Address.street_address,
        city: Faker::Address.city,
        state: Faker::Address.state,
        nationality: Faker::Nation.nationality,
        code_zip: Faker::Address.zip_code,
        mobile_phone: Faker::PhoneNumber.cell_phone_with_country_code,
        phone: Faker::PhoneNumber.phone_number_with_country_code,
        responsible: Faker::Name.name,
        email: Faker::Internet.email,
        web_site: Faker::Internet.url(host: 'example.com'),
        rite: Faker::Company.name,
        meeting: Faker::Date.forward(days: 23),
        pontency: Faker::Company.name,
        store_number: Faker::Number.number(digits: 2),
        venerable: Faker::Name.name,
        note: Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false),
        blazon: Faker::Name.name,
        decree_creation_of_the_store: 1000.days.from_now,
        country: Faker::Nation.nationality,
        founding_date: Faker::Date.between(from: '2014-09-23', to: '2014-09-25'),
        cnpj: Faker::IDNumber.brazilian_citizen_number(formatted: true)
      )
    end
    puts '***********************Member**********************'
      MasonicLodge.all.each do |masonic_lodge|
        Random.rand(100).times do |i|
          member = Member.create!(
            name: Faker::Name.name,
            birth_date: Faker::Date.birthday(min_age: 18, max_age: 65),
            place_of_birth: Faker::Nation.nationality,
            state: Faker::Address.state,
            nationality: Faker::Nation.nationality,
            city: Faker::Address.city,
            phone: Faker::PhoneNumber.phone_number_with_country_code,
            mobile_phone: Faker::PhoneNumber.cell_phone_with_country_code,
            email: Faker::Internet.email,
            relationship: Faker::Demographic.marital_status,
            wedding_date: Faker::Date.birthday(min_age: 18, max_age: 65),
            blood_type: Faker::Blood.type,
            fathers_name: Faker::Name.name,
            mothers_name: Faker::Name.name,
            cpf: Faker::IDNumber.brazilian_citizen_number(formatted: true),
            degree_of_instruction: Faker::Educator.degree,
            masonic_lodge: masonic_lodge
          )
          masonic_lodge.members << member
          masonic_lodge.save!
        end
      end
    puts '*******************Son**************************'
    Member.all.each do |member|
      Son.create!(
        birth_date: Faker::Date.birthday(min_age: 18, max_age: 65),
        gender: Faker::Gender.binary_type,
        name_sons: Faker::FunnyName.name,
        member_id: member.id
        # address: Faker::Address.street_address,
        # neighborhood: Faker::Address.community,
        # city: Faker::Address.city,
        # state: Faker::Address.state,
        # zip_code: Faker::Address.zip_code,
        # member: member_id
      )
    end
  end
end
