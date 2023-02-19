# == Schema Information
#
# Table name: members
#
#  id                    :bigint           not null, primary key
#  birth_date            :string
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
#  wedding_date          :string
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#
class Member < ApplicationRecord
  validates :name, :mobile_phone, :cpf, presence: true
end
