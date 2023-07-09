# frozen_string_literal: true

class AddMasonicLodgeToMember < ActiveRecord::Migration[7.0]
  def change
    add_reference :members, :masonic_lodge, null: false, foreign_key: true
  end
end
