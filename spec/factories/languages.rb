# == Schema Information
#
# Table name: languages
#
#  id         :bigint           not null, primary key
#  english    :boolean
#  france     :boolean
#  german     :boolean
#  other      :boolean
#  spanish    :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  member_id  :bigint           not null
#
# Indexes
#
#  index_languages_on_member_id  (member_id)
#
# Foreign Keys
#
#  fk_rails_...  (member_id => members.id)

FactoryBot.define do
  factory :language do
    english { Faker::Boolean.boolean }
    france { Faker::Boolean.boolean }
    german { Faker::Boolean.boolean }
    spanish { Faker::Boolean.boolean }
    other { Faker::Boolean.boolean }
    member
  end
end
