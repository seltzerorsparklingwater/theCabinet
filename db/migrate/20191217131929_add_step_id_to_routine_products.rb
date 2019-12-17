class AddStepIdToRoutineProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :routine_products, :step_id, :integer
    add_index :routine_products, :step_id
  end
end
