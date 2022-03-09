require 'pry'
class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  

  get '/guests' do
    guests = Guest.all
    guests.to_json
  end

  get "/reservations" do
    reservations = Reservation.all
    reservations.to_json
  end

  get '/rooms' do 
    rooms = Room.all
    rooms.to_json
  end

  get '/rooms/:id' do
    room = Room.find(params[:id])
    binding.pry
    room.to_json
  end

  patch '/rooms/:id' do 
    room = Room.find(params[:id])
    room.update(
      reserved: params[:reserved]
    )
    room.to_json
  end

  delete '/rooms/:id' do
    room = Room.find(params[:id])
    room.destroy
    room.to_json
  end



  # get "/" do
  #   { message: "Good luck with your project!" }.to_json
  # end

end
