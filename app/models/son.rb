class Son < ApplicationRecord
  belongs_to :member

  validates :birth_date, presence: true
  validates :gender, presence: true
  validates :name_sons, presence: true
end
