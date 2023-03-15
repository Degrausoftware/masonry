class Apj < ApplicationRecord
  validates :cim, :mobile_phone, :name,  presence: true

  belongs_to :member
end
