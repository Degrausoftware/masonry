# == Schema Information
#
# Table name: members
#
#  id                    :bigint           not null, primary key
#  birth_date            :date
#  blood_type            :string
#  city                  :string
#  cpf                   :string
#  degree_of_instruction :string
#  email                 :string
#  fathers_name          :string
#  mobile_phone          :string
#  mothers_name          :string
#  name                  :string
#  nationality           :string
#  phone                 :string
#  place_of_birth        :string
#  relationship          :string
#  state                 :string
#  wedding_date          :date
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#
require 'rails_helper'
require 'shoulda/matchers'

describe Member, type: :model do
  context 'valid member' do
    it 'create member' do
      member = FactoryBot.create(:member)
      expect(member).to be_valid
    end
  end
  context 'Validations' do
    it { should validate_presence_of :name }
    it { is_expected.to  validates_presence_of(:cpf) }
    it { is_expected.to  validates_presence_of(:mobile_phone) }
    end
  end
end
