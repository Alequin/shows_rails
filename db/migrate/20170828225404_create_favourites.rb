class CreateFavourites < ActiveRecord::Migration
  def change
    create_table :favourites do |t|
      t.references :user
      t.references :shows

      t.timestamps null: false
    end
  end
end
