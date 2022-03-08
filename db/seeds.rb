require 'pry'
Room.destroy_all
Hotel.destroy_all
puts "🌱 Seeding spices..."

# Seed your database here
hotel_Mario = Hotel.create(name: "Hotel Mario",num_of_rooms: 100)

# room_types = {"standard" => 100,"deluxe" => 150,"suite" => 200}

room_types = ["Standard","Deluxe","Presidential suite","penthouse"]

# 100.times do |h|
#     Room.create(room_number: h,reserved: false,room_type: room_types.keys[rand(0..2)] ,price: room_types.room_type,hotel_id: Hotel.all.sample.id)
# end

100.times do |r|
    Room.create(room_number: r+1,reserved: false,room_type: room_types.sample,price: 200,hotel_id: Hotel.all.sample.id)
end


puts "✅ Done seeding!"
