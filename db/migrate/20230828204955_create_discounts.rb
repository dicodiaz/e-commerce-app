class CreateDiscounts < ActiveRecord::Migration[7.0]
  def change
    create_table :discounts do |t|
      t.string :name
      t.text :description
      t.decimal :percent
      t.boolean :active, default: false

      t.timestamps
    end
  end
end
