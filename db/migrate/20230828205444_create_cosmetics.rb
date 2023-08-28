class CreateCosmetics < ActiveRecord::Migration[7.0]
  def change
    create_table :cosmetics do |t|
      t.string :name
      t.text :description
      t.references :brand, foreign_key: true
      t.decimal :price
      t.integer :quantity
      t.references :discount, foreign_key: true

      t.timestamps
    end
    add_index :cosmetics, :name
  end
end
