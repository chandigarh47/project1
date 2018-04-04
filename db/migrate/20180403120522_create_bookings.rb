class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.text :name
      t.datetime :checkin
      t.datetime :checkout
      t.text :room_type
      t.integer :price
      t.integer :hotel_id
      t.integer :user_id

      t.timestamps
    end
  end
end
