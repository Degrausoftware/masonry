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
class Job < ApplicationRecord
  validates :address, :carrer, :city, :current_position, :employer, :monthly_net_income,  presence: true
  validates :neihboarhood, :phone, :practice_another_profession, :service_time, :state, :which, :zip_code,  presence: true

  belongs_to :member
end
