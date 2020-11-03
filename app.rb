require './environment'

module FormsLab
  class App < Sinatra::Base
    
    get '/' do 
      erb :root 
    end

    get '/new' do
      erb :'pirates/new'
    end
    
    post '/pirates' do
      
      @pirates = Pirate.new(params['pirates']['name'], params['pirates']['weight'], params['pirates']['height'])
      
      params['pirates']['ships'].each do |ship_data|
        @ships = Ship.new(ship_data["name"], ship_data["type"], ship_data["booty"])
      end
        
        @ships = Ships.all
        
        erb :'pirates/show'
    end

  end
end
