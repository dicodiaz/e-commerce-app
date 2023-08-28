class CreateVariants < ActiveRecord::Migration[7.0]
  def change
    create_table :variants do |t|
      t.string :name
      t.string :hex_code
      t.references :image, null: false, foreign_key: true

      t.timestamps
    end
  end
end
