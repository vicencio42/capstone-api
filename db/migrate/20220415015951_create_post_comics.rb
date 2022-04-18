class CreatePostComics < ActiveRecord::Migration[7.0]
  def change
    create_table :post_comics do |t|
      t.string :name
      t.integer :price
      t.boolean :trade
      t.string :condition

      t.timestamps
    end
  end
end
