class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :content
      t.string :imagePath

      t.timestamps
    end
  end
end
