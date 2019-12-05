require 'sinatra'
require './lib/Terreno'
require './lib/Vehiculo'
require './lib/DashDot'

get '/configuracion' do
    erb :configurar
end

post '/configuracion' do
    @ancho_terreno = params[:ancho].to_i
    @alto_terreno = params[:alto].to_i
    terreno = Terreno.new
    @configuracion_terreno = terreno.configurarTerreno(@ancho_terreno, @alto_terreno)

    @x_vehiculo = params[:x].to_i
    @y_vehiculo = params[:y].to_i
    @orientacion = params[:orientacion]
    vehiculo = Vehiculo.new
    @configuracion_orientacion = vehiculo.configurarOrientacion(@orientacion)

    dashDot = DashDot.new
    dashDot.agregarTerreno(terreno)
    dashDot.agregarVehiculo(vehiculo)
    @configuracion_ubicacion = dashDot.configurarUbicacionVehiculo(@x_vehiculo, @y_vehiculo)
    erb :configurar
end