class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.integer :postal_code_name
      t.integer :postal_code_suffix
      t.integer :phone_number
      t.string :country
      t.integer :radius
      t.decimal :latitude, precision: 10, scale: 6
      t.decimal :longitude, precision: 10, scale: 6
      t.float :distance

      t.timestamps null: false
    end
  end
end
