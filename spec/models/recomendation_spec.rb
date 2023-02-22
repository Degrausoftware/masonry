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
