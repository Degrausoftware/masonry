class CreateLowtons < ActiveRecord::Migration[7.0]
  def change
    create_table :lowtons do |t|
      t.string :cim
      t.string :mobile_phone
      t.string :name
      t.references :member, null: false, foreign_key: true

      t.timestamps
    end
  end
end
