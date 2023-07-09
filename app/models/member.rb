# frozen_string_literal: true

# == Schema Information
#
# Table name: members
#
#  id                     :bigint           not null, primary key
#  admin                  :boolean
#  birth_date             :date
#  blood_type             :string
#  country                :string
#  cpf                    :string
#  degree_of_instruction  :string
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  fathers_name           :string
#  mobile_phone           :string
#  mothers_name           :string
#  name                   :string
#  nationality            :string
#  phone                  :string
#  place_of_birth         :string
#  relationship           :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  state                  :string
#  wedding_date           :date
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  masonic_lodge_id       :bigint           not null
#
# Indexes
#
#  index_members_on_email                 (email) UNIQUE
#  index_members_on_masonic_lodge_id      (masonic_lodge_id)
#  index_members_on_reset_password_token  (reset_password_token) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (masonic_lodge_id => masonic_lodges.id)
#
class Member < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :image_member
  belongs_to :masonic_lodge

  has_many :sons

  def author
    'Lojas FUlando de tal'
  end

  def masonic_lodge_name
    masonic_lodge.name
  end

  def as_json(_optins = {})
    super(
      root: true,
      methods: [:masonic_lodge_name],
      include: { masonic_lodge: { only: :name } }
    )
  end
end
