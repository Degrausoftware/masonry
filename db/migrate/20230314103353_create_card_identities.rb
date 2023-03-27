# frozen_string_literal: true

class CreateCardIdentities < ActiveRecord::Migration[7.0]
  def change
    create_table :card_identities do |t|
      t.date :issue_date
      t.string :issung_agency
      t.string :number_identity
      t.references :member, null: false, foreign_key: true

      t.timestamps
    end
  end
end
