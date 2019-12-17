class AddProductIdAndRoutineIdToRoutineProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :routine_products, :product_id, :integer
    add_column :routine_products, :routine_id, :integer
    add_index :routine_products, :product_id
    add_index :routine_products, :routine_id
  end
end
