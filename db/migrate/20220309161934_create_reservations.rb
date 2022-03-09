class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.date :check_in
      t.date :check_out
      t.string :special_requests
      t.integer :room_id
      t.integer :guest_id
    end
  end
end
