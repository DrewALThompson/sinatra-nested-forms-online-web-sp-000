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
      
      params['pirates']['ships'].each do 
      
      @pirates = Pirate.new(name = params['pirates']['name'])
    end

  end
end
