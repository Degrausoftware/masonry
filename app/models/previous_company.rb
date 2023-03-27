# frozen_string_literal: true

# == Schema Information
#
# Table name: previous_companies
#
#  id                        :bigint           not null, primary key
#  address                   :string
#  city                      :string
#  name_company              :string
#  neighboarhood             :string
#  phone                     :string
#  state                     :string
#  what_positio_did_you_hold :string
#  zip_code                  :string
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#  member_id                 :bigint           not null
#
# Indexes
#
#  index_previous_companies_on_member_id  (member_id)
#
# Foreign Keys
#
#  fk_rails_...  (member_id => members.id)
#
class PreviousCompany < ApplicationRecord
  validates :address, :city, :name_company, :neighboarhood, :phone, :state, :what_positio_did_you_hold, :zip_code,
            presence: true

  belongs_to :member
end
