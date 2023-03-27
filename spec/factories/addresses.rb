# frozen_string_literal: true

# == Schema Information
#
# Table name: addresses
#
#  id           :bigint           not null, primary key
#  address      :string
#  city         :string
#  neighborhood :string
#  state        :string
#  zip_code     :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  member_id    :bigint           not null
#
# Indexes
#
#  index_addresses_on_member_id  (member_id)
#
# Foreign Keys
#
#  fk_rails_...  (member_id => members.id)
#
FactoryBot.define do
  factory :address do
    address { Faker::Address.street_address }
    city { Faker::Address.city }
    neighborhood { Faker::Address.community }
    state { Faker::Address.state }
    zip_code { Faker::Address.zip_code }
    member
  end
end
