class CreateApjs < ActiveRecord::Migration[7.0]
  def change
    create_table :apjs do |t|
      t.string :cim
      t.string :mobile_phone
      t.string :name

      t.timestamps
    end
  end
end
