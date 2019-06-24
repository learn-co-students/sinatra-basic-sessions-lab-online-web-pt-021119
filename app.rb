require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :session
    set :session_secret, "formatica"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
      session[:item] = params[:item]
      @session = session
      fill_in(:item, :with => "socks")
            click_button "submit"
            expect(page).to have_text("socks")
redirect "/views/index"
          end

end
