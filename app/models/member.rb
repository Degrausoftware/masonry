class Member < ApplicationRecord
  validates :name, :mobile_phone, :cpf, presence: true

  def full_name
    "#{name} - #{cpf}"
  end
end
