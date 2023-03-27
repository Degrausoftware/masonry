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
require 'rails_helper'

RSpec.describe UniversityStudent, type: :model do
  it 'is valid all attributes' do
    universityStudent = create(:university_student)
    expect(universityStudent).to be_valid
  end

  context 'Validations' do
    it { is_expected.not_to validate_presence_of(:cim) }
    it { is_expected.to validate_presence_of(:mobile_phone) }
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to belong_to :member }
  end
end
