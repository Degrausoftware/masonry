# frozen_string_literal: true

# == Schema Information
#
# Table name: languages
#
#  id         :bigint           not null, primary key
#  english    :boolean
#  france     :boolean
#  german     :boolean
#  other      :boolean
#  spanish    :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  member_id  :bigint           not null
#
# Indexes
#
#  index_languages_on_member_id  (member_id)
#
# Foreign Keys
#
#  fk_rails_...  (member_id => members.id)
#
require 'rails_helper'

RSpec.describe Language, type: :model do
  it 'is valid all attributes' do
    language = FactoryBot.create(:language)
    expect(language).to be_valid
  end

  context 'Validations' do
    it { is_expected.to validate_presence_of(:english) }
    it { is_expected.to validate_presence_of(:german) }
    it { is_expected.to validate_presence_of(:france) }
    it { is_expected.to validate_presence_of(:spanish) }
    it { is_expected.to validate_presence_of(:other) }
    it { is_expected.to belong_to :member }
  end
end
