# == Schema Information
#
# Table name: personal_references
#
#  id           :bigint           not null, primary key
#  mason        :boolean
#  mobile_phone :string
#  name         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  member_id    :bigint           not null
#
# Indexes
#
#  index_personal_references_on_member_id  (member_id)
#
# Foreign Keys
#
#  fk_rails_...  (member_id => members.id)
#
class PersonalReference < ApplicationRecord
  validates :mason, :mobile_phone, :name,  presence: true
  belongs_to :member
end
