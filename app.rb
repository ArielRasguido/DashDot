require 'sinatra'
require './lib/Terreno'
require './lib/Vehiculo'
require './lib/DashDot'
require './lib/Secuencia'

def initialize()
    @secuencia= Secuencia.new
    @terreno = Terreno.new
    @vehiculo = Vehiculo.new
    @dashDot = DashDot.new
end

get '/' do
    erb :bienvenida
  end

#   post '/configurar' do
#     erb :configurar
#   end



get '/configuracion' do
    erb :configurar
end

post '/configuracion' do
    @ancho_terreno = params[:ancho].to_i
    @alto_terreno = params[:alto].to_i
    @configuracion_terreno = @terreno.configurarTerreno(@ancho_terreno, @alto_terreno)

    @x_vehiculo = params[:x].to_i
    @y_vehiculo = params[:y].to_i
    @orientacion = params[:orientacion]
   
    @configuracion_orientacion = @vehiculo.configurarOrientacion(@orientacion)

    
    @dashDot.agregarTerreno(@terreno)
    @dashDot.agregarVehiculo(@vehiculo)
    @configuracion_ubicacion = @dashDot.configurarUbicacionVehiculo(@x_vehiculo, @y_vehiculo)
    erb :configurar
end

#Simulacion

get '/simulacion' do
    erb :simulacion
end

post '/simulacion' do
    @movimientos_ingresados = params[:secuencia]
    @secuencia.establecer_secuencia(@movimientos_ingresados)
    if(!@secuencia.establecer_secuencia(@movimientos_ingresados))
        @movimientos_ingresados = "SECUENCIA NO PERMITIDA!"
    end
    erb :simulacion
end

post '/dashdotSimulacion' do
    @movimientos_ingresados = @secuencia.secuencia()
    erb :dashdotSimulacion
end

