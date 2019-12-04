require 'sinatra'

get '/configuracion' do
    erb :configurar
end

post '/configuracion' do
    @ancho_terreno = params[:ancho]
    @alto_terreno = params[:alto]
    @x_vehiculo = params[:x]
    @y_vehiculo = params[:y]
    @orientacion = params[:orientacion]

    erb :configurar
end