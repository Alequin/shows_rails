class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :title
      t.integer :series
      t.text :description
      t.string :image
      t.string :rogrammeID

      t.timestamps null: false
    end
  end
end
