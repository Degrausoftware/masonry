# == Schema Information
#
# Table name: previous_companies
#
#  id                        :bigint           not null, primary key
#  address                   :string
#  city                      :string
#  name_company              :string
#  neighboarhood             :string
#  phone                     :string
#  state                     :string
#  what_positio_did_you_hold :string
#  zip_code                  :string
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#  member_id                 :bigint           not null
#
# Indexes
#
#  index_previous_companies_on_member_id  (member_id)
#
# Foreign Keys
#
#  fk_rails_...  (member_id => members.id)
#
FactoryBot.define do
  factory :previous_company do
    address { Faker::Address.street_address }
    city { Faker::Address.city }
    name_company { Faker::Company.name }
    neighboarhood { Faker::Address.community }
    phone { Faker::PhoneNumber.phone_number }
    state { Faker::Address.state }
    what_positio_did_you_hold { Faker::Job.position }
    zip_code { Faker::Address.zip_code }
    member
  end
end
