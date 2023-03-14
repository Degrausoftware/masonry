# == Schema Information
#
# Table name: card_identities
#
#  id              :bigint           not null, primary key
#  issue_date      :date
#  issung_agency   :string
#  number_identity :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  member_id       :bigint           not null
#
# Indexes
#
#  index_card_identities_on_member_id  (member_id)
#
# Foreign Keys
#
#  fk_rails_...  (member_id => members.id)
#
class CardIdentity < ApplicationRecord
  validates :issue_date, :issung_agency, :number_identity, presence: true

  belongs_to :member
end
