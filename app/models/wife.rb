# frozen_string_literal: true

# == Schema Information
#
# Table name: wives
#
#  id         :bigint           not null, primary key
#  birth_date :date
#  carrer     :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  member_id  :bigint           not null
#
# Indexes
#
#  index_wives_on_member_id  (member_id)
#
# Foreign Keys
#
#  fk_rails_...  (member_id => members.id)
#
class Wife < ApplicationRecord
  validates :birth_date, :carrer, :name, presence: true

  belongs_to :member
end
