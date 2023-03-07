class CreateCultureReligions < ActiveRecord::Migration[7.0]
  def change
    create_table :culture_religions do |t|
      t.boolean :admission_freemasonry
      t.boolean :admission_freemasonry_family
      t.boolean :agreement_with_your_ticket
      t.string :city
      t.boolean :culture_religious
      t.string :expect_about_freemasonry
      t.string :financial_admission_boolean
      t.string :financial_boolean
      t.string :is_the_result
      t.boolean :masonic_event
      t.string :opinion_about_freemasonry
      t.boolean :postulates_of_the_order
      t.boolean :practice_religion
      t.string :state
      t.string :store_wante
      t.boolean :supreme_being
      t.string :which
      t.string :which_1
      t.string :which_2
      t.boolean :wife_agree_with_your_ticket
      t.references :member, null: false, foreign_key: true

      t.timestamps
    end
  end
end
