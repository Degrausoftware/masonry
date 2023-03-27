# frozen_string_literal: true

# == Schema Information
#
# Table name: lowtons
#
#  id           :bigint           not null, primary key
#  cim          :string
#  mobile_phone :string
#  name         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  member_id    :bigint           not null
#
# Indexes
#
#  index_lowtons_on_member_id  (member_id)
#
# Foreign Keys
#
#  fk_rails_...  (member_id => members.id)
#
FactoryBot.define do
  factory :lowton do
    cim { Faker::Number.number(digits: 8) }
    mobile_phone { Faker::PhoneNumber.cell_phone_with_country_code }
    name { Faker::Name.name }
    member
  end
end
