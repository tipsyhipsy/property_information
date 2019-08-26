class CreateProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|
      t.text :property_name, null: false
      t.integer :rent
      t.string :address
      t.integer :age
      t.text :note

      t.timestamps
    end
  end
end
