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
    rooms.to_json(
      include: {reservations: {only: [:check_in, :check_out, :special_requests, :guest_id, :room_id], 
      include: {guest: {only: [:name, :email, :phone]}}
      }}
    )

  end

  # , include: {guests: {only: [:name, :email, :phone]}})

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

  post '/guests' do
    guest = Guest.create(
      name: params[:name],
      email: params[:email],
      phone: params[:phone]
    )
    guest.to_json
  end

  post '/reservations' do
    reservation = Reservation.create(
      check_in: params[:check_in],
      check_out: params[:check_out],
      special_requests: params[:special_requests],
      room_id: params[:room_id],
      guest_id: params[:guest_id]
    )
    reservation.to_json
  end



  # get "/" do
  #   { message: "Good luck with your project!" }.to_json
  # end

end
