# == Schema Information
#
# Table name: demolays
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
#  index_demolays_on_member_id  (member_id)
#
# Foreign Keys
#
#  fk_rails_...  (member_id => members.id)
#
require 'rails_helper'

RSpec.describe Demolay, type: :model do
  it 'is valid all attributes' do
    demolay = create(:demolay)
    expect(demolay).to be_valid
  end

  context 'Validations' do
    it { is_expected.to validate_presence_of(:cim) }
    it { is_expected.to validate_presence_of(:mobile_phone) }
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to belong_to :member }
  end
end
