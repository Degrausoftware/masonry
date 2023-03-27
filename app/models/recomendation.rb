# frozen_string_literal: true

# == Schema Information
#
# Table name: recomendations
#
#  id           :bigint           not null, primary key
#  father_mason :boolean          default(FALSE)
#  mobile_phone :string
#  name         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  member_id    :bigint           not null
#
# Indexes
#
#  index_recomendations_on_member_id  (member_id)
#
# Foreign Keys
#
#  fk_rails_...  (member_id => members.id)
#
class Recomendation < ApplicationRecord
  validates :name, :mobile_phone, :father_mason, presence: true

  belongs_to :member
end
