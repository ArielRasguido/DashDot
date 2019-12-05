require 'sinatra'
require 'Secuencia'

secuencia= Secuencia.new

get '/simulacion' do
    erb :simulacion
end

post '/simulacion' do
    @secuencia_de_movimientos = params[:secuencia]
    
    
    erb :simulacion
end