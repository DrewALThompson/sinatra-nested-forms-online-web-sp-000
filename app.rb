require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/new' do
      erb :new
    end
    
    get post '/show' do
    end

  end
end
