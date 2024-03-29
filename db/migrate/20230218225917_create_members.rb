# frozen_string_literal: true

class CreateMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :members do |t|
      t.string :country
      t.string :cpf
      t.string :degree_of_instruction
      t.string :fathers_name
      t.string :mobile_phone
      t.string :mothers_name
      t.string :name
      t.string :nationality
      t.string :phone
      t.string :place_of_birth
      t.string :relationship
      t.string :state
      t.date :wedding_date
      t.date :birth_date
      t.string :blood_type

      t.timestamps
    end
  end
end
