class RemoveCoverImageFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :cover_image, :string
  end
end
