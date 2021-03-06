class CreateHotels < ActiveRecord::Migration[5.1]
  def change
    create_table :hotels do |t|
      t.text :name
      t.text :image
      t.integer :room
      t.text :room_type
      t.integer :price
      t.text :amenity
      t.text :reviews_id

      t.timestamps
    end
  end
end
