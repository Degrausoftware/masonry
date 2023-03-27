# frozen_string_literal: true

# == Schema Information
#
# Table name: sons
#
#  id         :bigint           not null, primary key
#  birth_date :date             not null
#  gender     :string           not null
#  name_sons  :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  member_id  :bigint           not null
#
# Indexes
#
#  index_sons_on_member_id  (member_id)
#
# Foreign Keys
#
#  fk_rails_...  (member_id => members.id)
#
require 'rails_helper'

RSpec.describe Son, type: :model do
  context 'Validations' do
    it { is_expected.to validate_presence_of(:birth_date) }
    it { is_expected.to validate_presence_of(:gender) }
    it { is_expected.to validate_presence_of(:name_sons) }
    it { is_expected.to belong_to :member }
  end
end
