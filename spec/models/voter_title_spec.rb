# frozen_string_literal: true

# == Schema Information
#
# Table name: voter_titles
#
#  id         :bigint           not null, primary key
#  number     :string
#  title_city :string
#  zone       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  member_id  :bigint           not null
#
# Indexes
#
#  index_voter_titles_on_member_id  (member_id)
#
# Foreign Keys
#
#  fk_rails_...  (member_id => members.id)
#
require 'rails_helper'

RSpec.describe VoterTitle, type: :model do
  it 'is valid all attributes' do
    voterTitle = create(:voter_title)
    expect(voterTitle).to be_valid
  end

  context 'Validations' do
    it { is_expected.to validate_presence_of(:number) }
    it { is_expected.to validate_presence_of(:title_city) }
    it { is_expected.to validate_presence_of(:zone) }
    it { is_expected.to belong_to :member }
  end
end
