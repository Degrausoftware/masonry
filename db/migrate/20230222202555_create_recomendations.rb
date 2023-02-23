class CreateRecomendations < ActiveRecord::Migration[7.0]
  def change
    create_table :recomendations do |t|
      t.boolean :father_mason, :default => false
      t.string :mobile_phone
      t.string :name
      t.references :member, null: false, foreign_key: true

      t.timestamps
    end
  end
end
