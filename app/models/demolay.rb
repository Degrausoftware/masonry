# frozen_string_literal: true

# == Schema Information
#
# Table name: demolays
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
#  index_demolays_on_member_id  (member_id)
#
# Foreign Keys
#
#  fk_rails_...  (member_id => members.id)
#
class Demolay < ApplicationRecord
  validates :cim, :mobile_phone, :name, presence: true

  belongs_to :member
end
