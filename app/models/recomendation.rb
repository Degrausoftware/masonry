class Recomendation < ApplicationRecord
  validates :name, :mobile_phone, :father_mason, presence: true

  belongs_to :member
end
