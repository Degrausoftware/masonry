# frozen_string_literal: true

# == Schema Information
#
# Table name: languages
#
#  id         :bigint           not null, primary key
#  english    :boolean
#  france     :boolean
#  german     :boolean
#  other      :boolean
#  spanish    :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  member_id  :bigint           not null
#
# Indexes
#
#  index_languages_on_member_id  (member_id)
#
# Foreign Keys
#
#  fk_rails_...  (member_id => members.id)
#
class Language < ApplicationRecord
  validates :english, :france, :german, :spanish, :other, presence: true

  belongs_to :member
end
