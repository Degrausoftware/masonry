namespace :dev do
  desc 'Configura o ambiente de desenvolvimento'
  task setup: :environment do
    puts 'Resetando o banco de dados...!...!....!...!...!'
    `rails db:drop db:create db:migrate`
    puts 'Finalizando o reset banco de dados...!...!....!...!...!'
    puts '*********************************************'
    p 'cadastrando os dados do sistema'
    puts '***********************Member**********************'
    100.times do |_i|
      Member.create!(
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
        degree_of_instruction: Faker::Educator.degree
      )
    end
    puts '******************apj***************************'
  end
end
