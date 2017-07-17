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

get '/cat' do
		erb(:index)
end

get '/testing_erb' do
	erb "Hey there visitor <%=2 + 2 %>!"
end
