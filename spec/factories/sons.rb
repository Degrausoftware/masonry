FactoryBot.define do
  factory :son do
    gender { 'Gender xxx' }
    name_sons { 'Name Sons xxx' }
    birth_date { 1000.days.from_now }
    member
  end
end
