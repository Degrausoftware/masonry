# == Schema Information
#
# Table name: questions
#
#  id         :bigint           not null, primary key
#  addiction  :string
#  debauchery :string
#  equality   :string
#  ethical    :string
#  fraternity :string
#  freedom    :string
#  toxic      :string
#  virtue     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  member_id  :bigint           not null
#
# Indexes
#
#  index_questions_on_member_id  (member_id)
#
# Foreign Keys
#
#  fk_rails_...  (member_id => members.id)
#
require 'rails_helper'

RSpec.describe Question, type: :model do
  context 'valid member' do
    it 'create member' do
      question = FactoryBot.create(:question)
      expect(question).to be_valid
    end
  end

  context 'Validations' do
    it { is_expected.to validate_presence_of(:addiction) }
    it { is_expected.to validate_presence_of(:debauchery) }
    it { is_expected.to validate_presence_of(:equality) }
    it { is_expected.to validate_presence_of(:ethical) }
    it { is_expected.to validate_presence_of(:fraternity) }
    it { is_expected.to validate_presence_of(:freedom) }
    it { is_expected.to validate_presence_of(:toxic) }
    it { is_expected.to validate_presence_of(:virtue) }
    it { is_expected.to belong_to :member }
  end
end
