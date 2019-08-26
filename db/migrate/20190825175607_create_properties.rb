class CreateProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|
      t.text :property_name, null: false
      t.integer :rent, null: false
      t.string :address, null: false
      t.integer :age, null: false
      t.text :note

      t.timestamps
    end
  end
end
