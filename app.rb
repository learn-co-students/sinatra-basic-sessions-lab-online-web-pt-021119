require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "blablablin"
  end

  get '/' do

    erb :index
  end

  post '/checkout' do
    @item = params["item"]
    "#{@item}"
    session[:item] = params["item"]
  end
end
