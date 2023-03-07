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
class CultureReligion < ApplicationRecord
  validates :admission_freemasonry, presence: true
  validates :admission_freemasonry_family, presence: true
  validates :agreement_with_your_ticket, presence: true
  validates :city, presence: true
  validates :culture_religious, presence: true
  validates :expect_about_freemasonry, presence: true
  validates :financial_admission_boolean, presence: true
  validates :financial_boolean, presence: true
  validates :is_the_result, presence: true
  validates :masonic_event, presence: true
  validates :opinion_about_freemasonry, presence: true
  validates :postulates_of_the_order, presence: true
  validates :practice_religion, presence: true
  validates :state, presence: true
  validates :store_wante, presence: true
  validates :supreme_being, presence: true
  validates :which, presence: true
  validates :which_1, presence: true
  validates :which_2, presence: true
  validates :wife_agree_with_your_ticket, presence: true

  belongs_to :member
end
