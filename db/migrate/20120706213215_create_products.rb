class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.integer :stock
      t.decimal :price

      t.timestamps
    end
  end
end