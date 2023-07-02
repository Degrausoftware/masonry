# frozen_string_literal: true

# == Schema Information
#
# Table name: members
#
#  id                    :bigint           not null, primary key
#  admin                 :boolean
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
#  masonic_lodge_id      :bigint           not null
#
# Indexes
#
#  index_members_on_masonic_lodge_id  (masonic_lodge_id)
#
# Foreign Keys
#
#  fk_rails_...  (masonic_lodge_id => masonic_lodges.id)
#
class Member < ApplicationRecord
  belongs_to :masonic_lodge
  has_one :son
  has_one_attached :avatar
  validates_presence_of :name
  validates :mobile_phone, presence: true
  # validades_presence_of :masonic_lodge_id
  
  # validates_presence_of :cpf, unless: :skip_cpf_validation, on: :create
  # validate :validate_cpf, unless: :skip_cpf_validation, on: [ :create, :update ], if: -> { cpf.present? }
  # validates :cpf, uniqueness: true, allow_nil: true, on: [ :create, :update ], if: -> { cpf.present? }

  def birth_date
    Date.strptime('03-02-2001', '%d-%m-%Y')
  end

  def cpf_valid?
    errors.add(:cpf, :invalid) unless CPF.valid?(cpf)
  end
end
