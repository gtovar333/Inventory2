class RemovePartNumberToProducts < ActiveRecord::Migration
  def change
    remove_column :products, :part_number

  end
end
