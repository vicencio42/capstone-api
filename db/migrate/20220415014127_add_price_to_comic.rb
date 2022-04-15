class AddPriceToComic < ActiveRecord::Migration[7.0]
  def change
    add_column :comics, :price, :decimal, precision: 9, scale: 2
  end
end
