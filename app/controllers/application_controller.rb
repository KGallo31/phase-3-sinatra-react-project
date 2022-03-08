class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get '/rooms' do 
    rooms = Room.all
    rooms.to_json
  end

  get '/rooms/:id' do
    room = Room.find(params[:id])
    room.to_json
  end



  # get "/" do
  #   { message: "Good luck with your project!" }.to_json
  # end

end
