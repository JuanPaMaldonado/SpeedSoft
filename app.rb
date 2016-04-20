require 'sinatra'

require_relative "./lib/gato.rb"

get '/' do
	erb :gato
end

get '/jugar' do
	@@game = Gato.new
	erb :jugar
end

get '/:x/:y' do
	@@game.marcarPosicion(params["x"].to_i, params["y"].to_i)  
	erb :jugar
end
