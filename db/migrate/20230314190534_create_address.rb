class CreateAddress < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :address
      t.string :city
      t.string :neighborhood
      t.string :state
      t.string :zip_code
      t.references :member, null: false, foreign_key: true

      t.timestamps
    end
  end
end
