# frozen_string_literal: true

# == Schema Information
#
# Table name: card_identities
#
#  id              :bigint           not null, primary key
#  issue_date      :date
#  issung_agency   :string
#  number_identity :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  member_id       :bigint           not null
#
# Indexes
#
#  index_card_identities_on_member_id  (member_id)
#
# Foreign Keys
#
#  fk_rails_...  (member_id => members.id)
#
FactoryBot.define do
  factory :card_identity do
    issue_date { Faker::Date.between(from: '2022-01-01', to: '2023-03-14') }
    issung_agency { Faker::Company.name }
    number_identity { Faker::IDNumber.valid }
    member
  end
end
