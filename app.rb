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
      
      @ships = params['pirates']['ships'].each do 
      
      @pirates = Pirate.new(params['pirates']['name'], params['pirates']['weight'], params['pirates']['height'])
    end

  end
end
