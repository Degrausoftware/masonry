# == Schema Information
#
# Table name: recomendations
#
#  id           :bigint           not null, primary key
#  father_mason :boolean          default(FALSE)
#  mobile_phone :string
#  name         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  member_id    :bigint           not null
#
# Indexes
#
#  index_recomendations_on_member_id  (member_id)
#
# Foreign Keys
#
#  fk_rails_...  (member_id => members.id)
#
FactoryBot.define do
  factory :recomendation do
    father_mason { [ true, false].sample }
    mobile_phone { Faker::PhoneNumber.cell_phone_with_country_code }
    name { Faker::Name.name }
    member
  end
end
