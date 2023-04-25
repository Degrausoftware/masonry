<<<<<<< HEAD
# frozen_string_literal: true

=======
>>>>>>> main
# == Schema Information
#
# Table name: members
#
#  id                    :bigint           not null, primary key
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
#
class Member < ApplicationRecord
  has_one :son
  has_one_attached :avatar
  validates_presence_of :name
  validates :mobile_phone, presence: true
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
