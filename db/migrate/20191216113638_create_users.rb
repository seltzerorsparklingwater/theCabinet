class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name, null: false 
      t.string :email, null: false 
      t.string :photo_url
      t.string :insta_url
      t.text :bio, null: false
      t.integer :sunscreen_id, null: false 
      t.timestamps
    end
  end
end
