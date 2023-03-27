# frozen_string_literal: true

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
require 'rails_helper'

RSpec.describe PersonalReference, type: :model do
  it 'is valid all attributes' do
    personalReference = create(:personal_reference)
    expect(personalReference).to be_valid
  end

  context 'Validations' do
    it { is_expected.to validate_presence_of(:mason) }
    it { is_expected.to validate_presence_of(:mobile_phone) }
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to belong_to :member }
  end
end
