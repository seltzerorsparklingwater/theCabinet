class CreateRoutineProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :routine_products do |t|
      t.timestamps
    end
  end
end
