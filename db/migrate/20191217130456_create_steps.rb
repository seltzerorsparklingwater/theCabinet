class CreateSteps < ActiveRecord::Migration[6.0]
  def change
    create_table :steps do |t|
      t.integer :routine_id, null: false
      t.integer :step_number_in_routine, null: false
      t.text :description, null: false
      
      t.timestamps
    end
  end
end
