require './environment'

module FormsLab
  class App < Sinatra::Base
    
    get '/' do 
      erb :root 
    end

    get '/pirates/new' do
      erb :'pirates/new'
    end
    
    post '/pirates' do
      
      params['pirates']['ships'].each do |ship_data|
        @ships = 
      
      @pirates = Pirate.new(params['pirates']['name'], params['pirates']['weight'], params['pirates']['height'])
    end

  end
end
