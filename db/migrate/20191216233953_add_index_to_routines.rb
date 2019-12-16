class AddIndexToRoutines < ActiveRecord::Migration[6.0]
  def change
    add_index :routines, :author_id
  end
end
