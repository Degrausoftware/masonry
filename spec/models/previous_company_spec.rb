# == Schema Information
#
# Table name: previous_companies
#
#  id                        :bigint           not null, primary key
#  address                   :string
#  city                      :string
#  name_company              :string
#  neighboarhood             :string
#  phone                     :string
#  state                     :string
#  what_positio_did_you_hold :string
#  zip_code                  :string
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#  member_id                 :bigint           not null
#
# Indexes
#
#  index_previous_companies_on_member_id  (member_id)
#
# Foreign Keys
#
#  fk_rails_...  (member_id => members.id)
#
require 'rails_helper'

RSpec.describe PreviousCompany, type: :model do
  it 'is valid all attributes' do
    previousCompany = create(:previous_company)
    expect(previousCompany).to be_valid
  end

  context 'Validations' do
    it { is_expected.to validate_presence_of(:address) }
    it { is_expected.to validate_presence_of(:city) }
    it { is_expected.to validate_presence_of(:name_company) }
    it { is_expected.to validate_presence_of(:neighboarhood) }
    it { is_expected.to validate_presence_of(:phone) }
    it { is_expected.to validate_presence_of(:state) }
    it { is_expected.to validate_presence_of(:what_positio_did_you_hold) }
    it { is_expected.to validate_presence_of(:zip_code) }
    it { is_expected.to belong_to :member }
  end
end
