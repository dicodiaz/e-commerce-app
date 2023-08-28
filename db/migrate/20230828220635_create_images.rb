class CreateImages < ActiveRecord::Migration[7.0]
  def change
    create_table :images do |t|
      t.text :link
      t.boolean :main, default: false
      t.references :cosmetic, null: false, foreign_key: true

      t.timestamps
    end
  end
end
