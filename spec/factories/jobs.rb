# == Schema Information
#
# Table name: jobs
#
#  id                          :bigint           not null, primary key
#  address                     :string
#  carrer                      :string
#  city                        :string
#  current_position            :string
#  employer                    :date
#  monthly_net_income          :string
#  neihboarhood                :string
#  phone                       :string
#  practice_another_profession :string
#  service_time                :date
#  state                       :string
#  which                       :string
#  zip_code                    :string
#  created_at                  :datetime         not null
#  updated_at                  :datetime         not null
#  member_id                   :bigint           not null
#
# Indexes
#
#  index_jobs_on_member_id  (member_id)
#
# Foreign Keys
#
#  fk_rails_...  (member_id => members.id)
#
FactoryBot.define do
  factory :job do
    address { Faker::Address.street_address }
    carrer { Faker::Job.title }
    city { Faker::Address.city }
    current_position { Faker::Job.position }
    employer { Faker::Date.between(from: -5.years.ago, to: Date.today) }
    monthly_net_income { Faker::Number.decimal(l_digits: 4, r_digits: 2) }
    neihboarhood { Faker::Address.community }
    phone { Faker::PhoneNumber.cell_phone }
    practice_another_profession { Faker::Boolean.boolean }
    service_time { Faker::Date.between(from: 5.years.ago, to: Date.today) }
    state { Faker::Address.state }
    which { Faker::Job.field }
    zip_code { Faker::Address.zip_code }
    member
  end
end
