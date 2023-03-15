require 'rails_helper'

RSpec.describe apj, type: :model do
  it 'is valid all attributes' do
    apj = create(:apj)
    expect(apj).to be_valid
  end

  context 'Validations' do
    it { is_expected.to validate_presence_of(:cim) }
    it { is_expected.to validate_presence_of(:mobile_phone) }
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to belong_to :member }
  end
end