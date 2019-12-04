require 'sinatra'

get '/configuracion' do
    erb :configurar
end

post '/configuracion' do
    @ancho_terreno = params[:ancho]
    @alto_terreno = params[:alto]

    erb :configurar
end