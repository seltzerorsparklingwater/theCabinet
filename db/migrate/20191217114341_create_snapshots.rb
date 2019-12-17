class CreateSnapshots < ActiveRecord::Migration[6.0]
  def change
    create_table :snapshots do |t|
      t.integer :user_id, null: false
      t.string :user_photo_url
      t.text :commentary
      t.timestamps
    end
    add_index :snapshots, :user_id
  end
end
