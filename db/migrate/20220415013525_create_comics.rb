class CreateComics < ActiveRecord::Migration[7.0]
  def change
    create_table :comics do |t|
      t.string :name
      t.string :author
      t.string :genre

      t.timestamps
    end
  end
end
