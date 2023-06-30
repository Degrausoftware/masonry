# frozen_string_literal: true

class CreateMasonicLodges < ActiveRecord::Migration[7.0]
  def change
    create_table :masonic_lodges do |t|
      t.string :name
      t.string :address
      t.string :correspoding_address
      t.string :city
      t.string :state
      t.string :nationality
      t.string :code_zip
      t.string :mobile_phone
      t.string :phone
      t.string :responsible
      t.string :email
      t.string :web_site
      t.string :rite
      t.date :meeting
      t.string :pontency
      t.string :store_number
      t.string :venerable
      t.string :note
      t.string :blazon
      t.string :decree_creation_of_the_store
      t.string :country
      t.date :founding_date
      t.string :cnpj

      t.timestamps
    end
  end
end
