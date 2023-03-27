# frozen_string_literal: true

class CreatePersonalReferences < ActiveRecord::Migration[7.0]
  def change
    create_table :personal_references do |t|
      t.boolean :mason
      t.string :mobile_phone
      t.string :name
      t.references :member, null: false, foreign_key: true

      t.timestamps
    end
  end
end
