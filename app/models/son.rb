# frozen_string_literal: true

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
class Son < ApplicationRecord
  belongs_to :member

  validates :birth_date, presence: true
  validates :gender, presence: true
  validates :name_sons, presence: true

  def as_json(_optins = {})
    super(
      root: true,
      methods: [:member],
      include: { member: { only: :name_sons } }
    )
  end
end
