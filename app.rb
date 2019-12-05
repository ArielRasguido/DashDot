require 'sinatra'
require './lib/terreno'

get '/configuracion' do
    erb :configurar
end

post '/configuracion' do
    @ancho_terreno = params[:ancho].to_i
    @alto_terreno = params[:alto].to_i
    terreno = Terreno.new
    @configuracion_terreno = terreno.configurarTerreno(@alto_terreno, @ancho_terreno)

    @x_vehiculo = params[:x]
    @y_vehiculo = params[:y]
    @orientacion = params[:orientacion]

    erb :configurar
end