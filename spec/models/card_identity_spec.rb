# == Schema Information
#
# Table name: card_identities
#
#  id              :bigint           not null, primary key
#  issue_date      :date
#  issung_agency   :string
#  number_identity :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  member_id       :bigint           not null
#
# Indexes
#
#  index_card_identities_on_member_id  (member_id)
#
# Foreign Keys
#
#  fk_rails_...  (member_id => members.id)
#
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
