	require 'sinatra'
	require 'pry'
	require 'babbler'

get '/' do
	erb :index
end

get '/cp' do
	erb :cp
end

get '/ls' do
	erb :ls
end

get '/mkdir' do
	erb :mkdir
	#`man mkdir`
end

get '/touch' do
	erb :touch
end

get '/mv' do
	erb :mv
end

get '/search' do
	erb :search
end

post '/search' do
	`man #{params[:search]} | col -b`
end



