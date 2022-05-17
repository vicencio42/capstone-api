class AddComicIdToWishlists < ActiveRecord::Migration[7.0]
  def change
    add_column :wishlists, :comic_id, :string
    add_column :wishlists, :title, :string
    add_column :wishlists, :image_url, :string
  end
end
