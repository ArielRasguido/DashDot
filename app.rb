require 'sinatra'

get '/simulacion' do
    erb :simulacion
end

post '/simulacion' do
    @secuencia_de_movimientos = params[:secuencia]
    erb :simulacion
end