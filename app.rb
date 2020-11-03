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
      
      params[]
      
      @pirates = Pirate.new(params[:pirate])
    end

  end
end
