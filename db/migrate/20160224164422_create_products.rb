class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :current_price
      t.integer :quantity
      t.text :description
      t.references :category, index: true, foreign_key: true
      t.references :brand, index: true, foreign_key: true
      t.attachment :avatar

      t.timestamps null: false
    end
  end
end
