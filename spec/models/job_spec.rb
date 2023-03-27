# frozen_string_literal: true

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
require 'rails_helper'

RSpec.describe Job, type: :model do
  it 'is valid all attributes' do
    job = create(:job)
    expect(job).to be_valid
  end

  context 'Validations' do
    it { is_expected.to validate_presence_of(:address) }
    it { is_expected.to validate_presence_of(:carrer) }
    it { is_expected.to validate_presence_of(:city) }
    it { is_expected.to validate_presence_of(:current_position) }
    it { is_expected.to validate_presence_of(:employer) }
    it { is_expected.to validate_presence_of(:monthly_net_income) }
    it { is_expected.to validate_presence_of(:neihboarhood) }
    it { is_expected.to validate_presence_of(:phone) }
    it { is_expected.to validate_presence_of(:practice_another_profession) }
    it { is_expected.to validate_presence_of(:service_time) }
    it { is_expected.to validate_presence_of(:state) }
    it { is_expected.to validate_presence_of(:which) }
    it { is_expected.to validate_presence_of(:zip_code) }
    it { is_expected.to belong_to :member }
  end
end
