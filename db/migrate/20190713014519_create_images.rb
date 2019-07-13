class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :photo
      t.integer :user_id
      t.integer :album_id

      t.timestamps
    end
  end
end
