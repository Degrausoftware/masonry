# frozen_string_literal: true

# == Schema Information
#
# Table name: voter_titles
#
#  id         :bigint           not null, primary key
#  number     :string
#  title_city :string
#  zone       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  member_id  :bigint           not null
#
# Indexes
#
#  index_voter_titles_on_member_id  (member_id)
#
# Foreign Keys
#
#  fk_rails_...  (member_id => members.id)
#
FactoryBot.define do
  factory :voter_title do
    number { Faker::IDNumber.brazilian_citizen_number }
    title_city { Faker::Address.city }
    zone { rand(100..500) }
    member
  end
end
