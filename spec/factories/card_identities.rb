FactoryBot.define do
  factory :card_identity do
    issue_date { Faker::Date.between(from: '2022-01-01', to: '2023-03-14') }
    issung_agency { Faker::Company.name }
    number_identity { Faker::IDNumber.valid }
    member
  end
end






