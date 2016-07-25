class CreateVendors < ActiveRecord::Migration[5.0]
  def change
    create_table :vendors do |t|
      t.references :user, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.date :birthdate
      t.string :occuptation
      t.string :city
      t.string :state
      t.string :zip_code

      t.timestamps
    end
  end
end
