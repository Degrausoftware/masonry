# frozen_string_literal: true

class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.string :address
      t.string :carrer
      t.string :city
      t.string :current_position
      t.date :employer
      t.string :monthly_net_income
      t.string :neihboarhood
      t.string :phone
      t.string :practice_another_profession
      t.date :service_time
      t.string :state
      t.string :which
      t.string :zip_code
      t.references :member, null: false, foreign_key: true

      t.timestamps
    end
  end
end
