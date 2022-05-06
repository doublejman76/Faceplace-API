class AddBioAndImagePathToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :bio, :string
    add_column :users, :imagePath, :string
  end
end
