require_relative 'config/environment'

class App < Sinatra::Base

	configure do
		enable :sessions
		set :session_secret, "segredo"
	end

	get '/' do
		erb :index
	end

	post '/checkout' do
		@session = session.merge!(params)
		erb :item
	end

end