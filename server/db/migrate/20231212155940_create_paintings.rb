class CreatePaintings < ActiveRecord::Migration[7.1]
  def change
    create_table :paintings do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.string :painter
      t.decimal :price
      t.string :order_link

      t.timestamps
    end
  end
end
