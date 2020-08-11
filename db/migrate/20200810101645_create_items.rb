class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string  :product_name,  null: false
      t.text    :explanation,   null: false
      t.integer :category,      null: false
      t.integer :product_status,      null: false
      t.integer :shipping_charges,      null: false
      t.integer :shipping_origin,      null: false 
      t.integer :date_of_shipment,      null: false
      t.integer :product_price,      null: false
      t.references :user,      null: false, foreign_key: true
      t.timestamps
    end
  end
end
