# frozen_string_literal: true

class CreateLanguages < ActiveRecord::Migration[7.0]
  def change
    create_table :languages do |t|
      t.boolean :english
      t.boolean :france
      t.boolean :german
      t.boolean :spanish
      t.boolean :other
      t.references :member, null: false, foreign_key: true

      t.timestamps
    end
  end
end
