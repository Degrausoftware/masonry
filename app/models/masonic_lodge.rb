# frozen_string_literal: true

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
class MasonicLodge < ApplicationRecord
  validates_presence_of :email
  validates_presence_of :address
  validates_presence_of :cnpj
  validates_presence_of :city
end
