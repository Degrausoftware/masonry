class CreateSons < ActiveRecord::Migration[7.0]
  def change
    create_table :sons do |t|
      t.date :birth_date, null: false
      t.string :gender, null: false
      t.string :name_sons, null: false
      t.references :member, null: false, foreign_key: true

      t.timestamps
    end
  end
end
