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

    @movimientos_ingresados = params[:secuencia]
    @secuencia_configurada = @secuencia.configurar_secuencia(@movimientos_ingresados)

    @dashDot.vehiculo.agregarSecuencia(@secuencia)
    erb :configurar
end

post '/simulacion' do
    @pos_inicial = @dashDot.obtenerPosicion()
    @movimientos = @dashDot.ejecutarSecuencia()
    @pos_final = @dashDot.obtenerPosicion()
    erb :simulacion
end