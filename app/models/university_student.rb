# frozen_string_literal: true

# == Schema Information
#
# Table name: university_students
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
#  index_university_students_on_member_id  (member_id)
#
# Foreign Keys
#
#  fk_rails_...  (member_id => members.id)
#
class UniversityStudent < ApplicationRecord
  validates :mobile_phone, :name, presence: true

  belongs_to :member
end
