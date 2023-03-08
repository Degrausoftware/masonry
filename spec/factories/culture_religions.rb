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
FactoryBot.define do
  factory :culture_religion do
    admission_freemasonry { Faker::Boolean.boolean(true_ratio: 0.9) }
    admission_freemasonry_family { Faker::Boolean.boolean(true_ratio: 0.9) }
    agreement_with_your_ticket { Faker::Boolean.boolean(true_ratio: 0.9) }
    city { Faker::Address.city }
    culture_religious { Faker::Boolean.boolean(true_ratio: 0.9) }
    expect_about_freemasonry { Faker::Lorem.sentence }
    financial_admission_boolean { Faker::Lorem.word }
    financial_boolean { Faker::Lorem.word }
    is_the_result { Faker::Lorem.word }
    masonic_event { Faker::Boolean.boolean(true_ratio: 0.9) }
    opinion_about_freemasonry { Faker::Lorem.sentence }
    postulates_of_the_order { Faker::Boolean.boolean(true_ratio: 0.9) }
    practice_religion { Faker::Boolean.boolean(true_ratio: 0.9) }
    state { Faker::Address.state }
    store_wante { Faker::Lorem.word }
    supreme_being { Faker::Boolean.boolean(true_ratio: 0.9) }
    which { Faker::Lorem.word }
    which_1 { Faker::Lorem.word }
    which_2 { Faker::Lorem.word }
    wife_agree_with_your_ticket { Faker::Boolean.boolean(true_ratio: 0.9) }
    member
  end
end
