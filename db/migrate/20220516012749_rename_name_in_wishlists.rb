class RenameNameInWishlists < ActiveRecord::Migration[7.0]
  def up
    rename_column :wishlists, :name, :user_id
  end

  def down
    rename_column :wishlists, :user_id, :name
  end
end
