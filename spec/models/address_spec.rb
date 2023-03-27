# frozen_string_literal: true

# == Schema Information
#
# Table name: addresses
#
#  id           :bigint           not null, primary key
#  address      :string
#  city         :string
#  neighborhood :string
#  state        :string
#  zip_code     :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  member_id    :bigint           not null
#
# Indexes
#
#  index_addresses_on_member_id  (member_id)
#
# Foreign Keys
#
#  fk_rails_...  (member_id => members.id)
#
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
