# frozen_string_literal: true

# == Schema Information
#
# Table name: culture_religions
#
#  id                           :bigint           not null, primary key
#  admission_freemasonry        :boolean
#  admission_freemasonry_family :boolean
#  agreement_with_your_ticket   :boolean
#  city                         :string
#  culture_religious            :boolean
#  expect_about_freemasonry     :string
#  financial_admission_boolean  :string
#  financial_boolean            :string
#  is_the_result                :string
#  masonic_event                :boolean
#  opinion_about_freemasonry    :string
#  postulates_of_the_order      :boolean
#  practice_religion            :boolean
#  state                        :string
#  store_wante                  :string
#  supreme_being                :boolean
#  which                        :string
#  which_1                      :string
#  which_2                      :string
#  wife_agree_with_your_ticket  :boolean
#  created_at                   :datetime         not null
#  updated_at                   :datetime         not null
#  member_id                    :bigint           not null
#
# Indexes
#
#  index_culture_religions_on_member_id  (member_id)
#
# Foreign Keys
#
#  fk_rails_...  (member_id => members.id)
#
require 'rails_helper'

RSpec.describe CultureReligion, type: :model do
  it 'is valid with all attributes' do
    culture_religion = create(:culture_religion)
    expect(culture_religion).to be_valid
  end

  context 'Validations' do
    it { is_expected.to validate_presence_of(:admission_freemasonry) }
    it { is_expected.to validate_presence_of(:admission_freemasonry_family) }
    it { is_expected.to validate_presence_of(:agreement_with_your_ticket) }
    it { is_expected.to validate_presence_of(:city) }
    it { is_expected.to validate_presence_of(:culture_religious) }
    it { is_expected.to validate_presence_of(:expect_about_freemasonry) }
    it { is_expected.to validate_presence_of(:financial_admission_boolean) }
    it { is_expected.to validate_presence_of(:financial_boolean) }
    it { is_expected.to validate_presence_of(:is_the_result) }
    it { is_expected.to validate_presence_of(:masonic_event) }
    it { is_expected.to validate_presence_of(:opinion_about_freemasonry) }
    it { is_expected.to validate_presence_of(:postulates_of_the_order) }
    it { is_expected.to validate_presence_of(:practice_religion) }
    it { is_expected.to validate_presence_of(:state) }
    it { is_expected.to validate_presence_of(:store_wante) }
    it { is_expected.to validate_presence_of(:supreme_being) }
    it { is_expected.to validate_presence_of(:which) }
    it { is_expected.to validate_presence_of(:which_1) }
    it { is_expected.to validate_presence_of(:which_2) }
    it { is_expected.to validate_presence_of(:wife_agree_with_your_ticket) }
    it { is_expected.to belong_to(:member) }
  end
end
