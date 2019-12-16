class CreateRoutines < ActiveRecord::Migration[6.0]
  def change
    create_table :routines do |t|
      t.integer :author_id, null: false
      t.string :title, null: false
      t.string :shelfie_url
      t.string :steps_subdoc, null: false
      t.timestamps
    end
  end
end
