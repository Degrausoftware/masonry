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
class Address < ApplicationRecord
  validates :address, :city, :neighborhood, :state, :zip_code, presence: true

  belongs_to :member
end
