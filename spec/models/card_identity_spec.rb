require 'rails_helper'

RSpec.describe CardIdentity, type: :model do
  it 'is valid all attributes' do
    cardidentity = create(:card_identity)
    expect(cardidentity).to be_valid
  end

  context 'Validations' do
    it { is_expected.to validate_presence_of(:issue_date) }
    it { is_expected.to validate_presence_of(:issung_agency) }
    it { is_expected.to validate_presence_of(:number_identity) }
    it { is_expected.to belong_to :member }
  end
end
