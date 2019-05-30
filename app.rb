require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, 'cabbage'
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    "Hello World"
    session[:item] = params[:item]
    @session = session
    erb :checkout
  end

end
