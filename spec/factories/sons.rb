# == Schema Information
#
# Table name: sons
#
#  id         :bigint           not null, primary key
#  birth_date :date             not null
#  gender     :string           not null
#  name_sons  :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  member_id  :bigint           not null
#
# Indexes
#
#  index_sons_on_member_id  (member_id)
#
# Foreign Keys
#
#  fk_rails_...  (member_id => members.id)
#
FactoryBot.define do
  factory :son do
    gender { "Gender xxx" }
    name_sons { "Name Sons xxx" }
    birth_date { 1000.days.from_now }
    member
  end
end
