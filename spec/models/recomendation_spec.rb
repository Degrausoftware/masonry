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
require 'rails_helper'

RSpec.describe Recomendation, type: :model do
  it 'is valid all attributes' do
    recomendation = FactoryBot.create(:recomendation, father_mason: true)
    expect(recomendation).to be_valid
  end

  context 'Validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:mobile_phone) }
    it { is_expected.to validate_presence_of(:father_mason) }
    it { is_expected.to belong_to :member }
  end
end
