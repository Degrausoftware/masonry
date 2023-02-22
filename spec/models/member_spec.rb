require 'rails_helper'

describe Member, type: :model do
  it 'is valid all attributes' do
    member = create(:member)
    expect(member).to be_valid
  end

  context 'Validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:cpf) }
    it { is_expected.to validate_presence_of(:mobile_phone) }
  end

  context 'Instance methods' do
    it '#full_name' do
      member = create(:member)
      expect(member.full_name).to eq("#{member.name} - #{member.cpf}")
    end
  end
end
