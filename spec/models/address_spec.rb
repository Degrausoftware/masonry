require 'rails_helper'

RSpec.describe Address, type: :model do
  it 'is valid all attributes' do
    address = FactoryBot.create(:address)
    expect(address).to be_valid
  end

  context 'Validations' do
    it { is_expected.to validate_presence_of(:address) }
    it { is_expected.to validate_presence_of(:city) }
    it { is_expected.to validate_presence_of(:state) }
    it { is_expected.to validate_presence_of(:neighborhood) }
    it { is_expected.to validate_presence_of(:zip_code) }
    it { is_expected.to belong_to :member }
  end
end
