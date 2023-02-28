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
  validates :addiction, :debauchery, :equality, :ethical, :fraternity, :freedom, :toxic, :virtue,  presence: true

  belongs_to :member
end
