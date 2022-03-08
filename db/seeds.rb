require 'pry'
Room.destroy_all
Hotel.destroy_all
puts "🌱 Seeding spices..."

# Seed your database here
hotel_Mario = Hotel.create(name: "Hotel Mario",num_of_rooms: 100)

room_types = {"Standard" => 100,"Deluxe" => 150,"Presidential Suite" => 200,"Penthouse" => 300}

# room_types = ["Standard","Deluxe","Presidential suite","penthouse"]

100.times do |r|
    current_room_type = room_types.keys.sample
    room_img = ''
    if current_room_type === "Standard"
        room_img = "https://d2kusoc0njyh1c.cloudfront.net/aucklandairport.holidayinn.com-436168447/cms/cache/v2/5c97fa0da0ffb.jpg/1280x1024/fit/80/c976938cc104aa89d199060d634442ef.jpg"
    elsif current_room_type === "Deluxe"
        room_img = 'https://www.thehotelumd.com/wp-content/uploads/2018/07/SMC_HUMD_Pool_STDK-619B_2266-11x8.jpg'
    elsif current_room_type === 'Presidential Suite'
        room_img = "https://www.thepostoakhotel.com/img/resort/875x600/Presidential-living-room_02.jpg"
    else 
        room_img = 'https://imageio.forbes.com/specials-images/imageserve/5d0f16f334a5c40008492f2e/Two-story-penthouse/960x0.jpg?fit=bounds&format=jpg&width=960'
    end
    Room.create(
        room_number: r+1,
        reserved: false,
        room_type: current_room_type,
        price: room_types[current_room_type],
        hotel_id: Hotel.all.sample.id,
        imgUrl: room_img)
end


puts "✅ Done seeding!"
