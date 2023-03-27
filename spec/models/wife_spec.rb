# frozen_string_literal: true

# == Schema Information
#
# Table name: wives
#
#  id         :bigint           not null, primary key
#  birth_date :date
#  carrer     :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  member_id  :bigint           not null
#
# Indexes
#
#  index_wives_on_member_id  (member_id)
#
# Foreign Keys
#
#  fk_rails_...  (member_id => members.id)
#
require 'rails_helper'

RSpec.describe Wife, type: :model do
  it 'is valid all attributes' do
    wife = FactoryBot.create(:wife)
    expect(wife).to be_valid
  end

  context 'Validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:birth_date) }
    it { is_expected.to validate_presence_of(:carrer) }
    it { is_expected.to belong_to :member }
  end
end
