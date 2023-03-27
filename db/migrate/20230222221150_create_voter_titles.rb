# frozen_string_literal: true

class CreateVoterTitles < ActiveRecord::Migration[7.0]
  def change
    create_table :voter_titles do |t|
      t.string :number
      t.string :title_city
      t.string :zone
      t.references :member, null: false, foreign_key: true

      t.timestamps
    end
  end
end
