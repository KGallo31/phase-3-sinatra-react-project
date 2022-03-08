class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |r| 
      r.integer :room_number
      r.boolean :reserved
      r.string :room_type
      r.integer :price
      r.integer :hotel_id
      r.string :imgUrl
    end
  end
end