# frozen_string_literal: true

class CreatePreviousCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :previous_companies do |t|
      t.string :address
      t.string :city
      t.string :name_company
      t.string :neighboarhood
      t.string :phone
      t.string :state
      t.string :what_positio_did_you_hold
      t.string :zip_code
      t.references :member, null: false, foreign_key: true

      t.timestamps
    end
  end
end
