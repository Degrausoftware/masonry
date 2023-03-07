class CreateWives < ActiveRecord::Migration[7.0]
  def change
    create_table :wives do |t|
      t.date :birth_date
      t.string :carrer
      t.string :name
      t.references :member, null: false, foreign_key: true

      t.timestamps
    end
  end
end
