class CreateAdresses < ActiveRecord::Migration[6.0]
  def change
    create_table :adresses do |t|
      t.integer :postal_number, null: false  
      t.integer :birthplace_id, null: false
      t.string :municipality, null: false
      t.string :house_number, null: false 
      t.string :building_name 
      t.string :phone_number, null: false 
      t.references :item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
