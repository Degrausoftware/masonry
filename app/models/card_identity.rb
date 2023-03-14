class CardIdentity < ApplicationRecord
  validates :issue_date, :issung_agency, :number_identity, presence: true

  belongs_to :member
end
