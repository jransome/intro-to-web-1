require 'sinatra'

get '/' do
	"Hello world!"
end

get '/secret' do
	"There are no secrets...."
end

get '/something' do
  "BOO!"
end

post '/named-cat' do
	p params
  @name = params[:name]
  @color = params[:color]
	erb(:index)
end

get '/random-cat' do
  @name = ["Amigo","Oscar","Viking"].sample
	erb(:index)
end

get '/cat-form' do
	@form = true
	@name = ""
	erb(:index)
end
