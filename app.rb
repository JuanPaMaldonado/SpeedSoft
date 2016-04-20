require 'sinatra'

get '/' do
	erb :gato
end

get '/jugar' do
	erb :jugar
end

get '/:x/:y' do
	erb :jugar
end
