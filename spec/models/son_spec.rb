require 'rails_helper'

RSpec.describe Son, type: :model do
  context 'Validations' do
    it { is_expected.to validate_presence_of(:birth_date) }
    it { is_expected.to validate_presence_of(:gender) }
    it { is_expected.to validate_presence_of(:name_sons) }
    it { is_expected.to belong_to :member }
  end
end

