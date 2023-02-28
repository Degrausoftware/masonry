# == Schema Information
#
# Table name: university_students
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
#  index_university_students_on_member_id  (member_id)
#
# Foreign Keys
#
#  fk_rails_...  (member_id => members.id)
#
FactoryBot.define do
  factory :university_student do
    cim { Faker::Number.number(digits: 8) }
    mobile_phone { Faker::PhoneNumber.cell_phone }
    name { Faker::Name.name }
    member
  end
end
