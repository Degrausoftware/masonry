# == Schema Information
#
# Table name: questions
#
#  id         :bigint           not null, primary key
#  addiction  :string
#  debauchery :string
#  equality   :string
#  ethical    :string
#  fraternity :string
#  freedom    :string
#  toxic      :string
#  virtue     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  member_id  :bigint           not null
#
# Indexes
#
#  index_questions_on_member_id  (member_id)
#
# Foreign Keys
#
#  fk_rails_...  (member_id => members.id)
#
class Question < ApplicationRecord
  belongs_to :member

  validates :addiction, presence: true
  validates :debauchery, presence: true
  validates :equality, presence: true
  validates :ethical, presence: true
  validates :fraternity, presence: true
  validates :freedom, presence: true
  validates :toxic, presence: true
  validates :virtue, presence: true
end
