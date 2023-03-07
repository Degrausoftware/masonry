class Address < ApplicationRecord
  validates :address, :city, :neighborhood, :state, :zip_code, presence: true

  belongs_to :member
end
