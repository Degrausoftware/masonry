# == Schema Information
#
# Table name: masonic_lodges
#
#  id                           :bigint           not null, primary key
#  address                      :string
#  blazon                       :string
#  city                         :string
#  cnpj                         :string
#  code_zip                     :string
#  correspoding_address         :string
#  country                      :string
#  decree_creation_of_the_store :string
#  email                        :string
#  founding_date                :date
#  meeting                      :date
#  mobile_phone                 :string
#  name                         :string
#  nationality                  :string
#  note                         :string
#  phone                        :string
#  pontency                     :string
#  responsible                  :string
#  rite                         :string
#  state                        :string
#  store_number                 :string
#  venerable                    :string
#  web_site                     :string
#  created_at                   :datetime         not null
#  updated_at                   :datetime         not null
#
require 'rails_helper'
# require 'should/matchers'

describe MasonicLodge, type: :model do
  context 'valid masoniclodge' do 
    it 'create masonic_lodge' do 
      masonic_lodge = FactoryBot.create(:masonic_lodge)
      expect(masonic_lodge).to be_valid
    end
  end
  context 'Validations' do
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:address) }
    it { is_expected.to validate_presence_of(:city) }
    it { is_expected.to validate_presence_of(:cnpj) }
    # it { is_expected.to validate_presence_of(:code_zip) }
    # it { is_expected.to validate_presence_of(:correspoding_address) }
    # it { is_expected.to validate_presence_of(:decree_creation_of_the_store) }
    # it { is_expected.to validate_presence_of(:email) }
    # it { is_expected.to validate_presence_of(:founding_date) }
    # it { is_expected.to validate_presence_of(:meeting) }
    # it { is_expected.to validate_presence_of(:mobile_phone) }
    # it { is_expected.to validate_presence_of(:name) }
    # it { is_expected.to validate_presence_of(:note) }
    # it { is_expected.to validate_presence_of(:phone) }
    # it { is_expected.to validate_presence_of(:pontency) }
    # it { is_expected.to validate_presence_of(:rite) }
    # it { is_expected.to validate_presence_of(:state) }
    # it { is_expected.to validate_presence_of(:store_number) }
    # it { is_expected.to validate_presence_of(:venerable) }
    # it { is_expected.to validate_presence_of(:web_site) }
  end
end
