class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :addiction
      t.string :debauchery
      t.string :equality
      t.string :ethical
      t.string :fraternity
      t.string :freedom
      t.string :toxic
      t.string :virtue
      t.references :member, null: false, foreign_key: true

      t.timestamps
    end
  end
end
