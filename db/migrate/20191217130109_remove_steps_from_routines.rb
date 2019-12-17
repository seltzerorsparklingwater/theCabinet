class RemoveStepsFromRoutines < ActiveRecord::Migration[6.0]
  def change
    remove_column :routines, :steps_subdoc
  end
end
