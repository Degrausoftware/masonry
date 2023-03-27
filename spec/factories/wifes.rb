# frozen_string_literal: true

FactoryBot.define do
  factory :wife do
    birth_date { 1000.days.from_now }
    carrer { Faker::Job.title }
    name { Faker::Name.name }
    member
  end
end
