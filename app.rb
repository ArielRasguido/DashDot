require 'sinatra'
require './lib/Secuencia'
def initialize()
    @secuencia= Secuencia.new
end

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
