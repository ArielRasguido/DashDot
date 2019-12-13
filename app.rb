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
    @nro_vehiculo_lista = 1
    @ancho_terreno = 0
    @alto_terreno = 0
    @dashDot.agregarTerreno(@terreno)
end

get '/' do
    erb :bienvenida
end

# post '/' do
#     erb :bienvenida
# end

get '/configuracion' do
    erb :configurar
end

post '/configuracion' do
    @ancho_terreno = params[:ancho].to_i
    @alto_terreno = params[:alto].to_i
    @configuracion_terreno = @terreno.configurarTerreno(@ancho_terreno, @alto_terreno)
    @vehiculo = Vehiculo.new
    @secuencia = Secuencia.new

    @x_vehiculo = params[:x].to_i
    @y_vehiculo = params[:y].to_i
    @orientacion = params[:orientacion]
    @configuracion_orientacion = @vehiculo.configurarOrientacion(@orientacion)

    # @dashDot.agregarTerreno(@terreno)
    @dashDot.agregarVehiculo(@vehiculo)
    @configuracion_ubicacion = @dashDot.configurarUbicacionVehiculo(@vehiculo, @x_vehiculo, @y_vehiculo)

    @movimientos_ingresados = params[:secuencia]
    @secuencia_configurada = @secuencia.configurar_secuencia(@movimientos_ingresados)

    # @vehiculo.agregarSecuencia(@secuencia)
    @dashDot.asignarSecuencia(@vehiculo, @secuencia)
    erb :configurar
end

post '/simulacion' do
    @ancho_configurado = @dashDot.terreno.ancho
    @alto_configurado = @dashDot.terreno.alto
    @dashDot.incrementarTam()
    @nro_vehiculo = 1
    #@dashDot.agregarVehiculo(@vehiculo)
    # @pos_inicial = @dashDot.obtenerPosicion(@dashDot.vehiculos[0])
    # @movimientos = @dashDot.ejecutarSecuencia(@dashDot.vehiculos[0])
    # @pos_final = @dashDot.obtenerPosicion(@dashDot.vehiculos[0])
    erb :simulacion
end


