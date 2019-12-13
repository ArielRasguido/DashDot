require 'Vehiculo'
require 'Secuencia'

RSpec.describe Vehiculo do
    before { @vehiculo = Vehiculo.new }

    it 'Devuelvo "True" si el numero enviado es positivo' do
        expect(@vehiculo.esPositivo(5) ).to eq(true)
    end
    it 'Devuelvo "False" si el numero enviado es negativo' do
        expect(@vehiculo.esPositivo(-5) ).to eq(false)
    end
    it 'Devuelvo "True" si el numero enviado es un decimal y lo convierte a entero' do
        expect(@vehiculo.esPositivo(5.5) ).to eq(true)
    end
    it 'Devuelvo 5 si la coordenada horizontal es configurada con ese numero' do
        expect(@vehiculo.x = 5 ).to eq(@vehiculo.x)
    end
    it 'Devuelvo 2 si la coordenada vertical es configurada con ese numero' do
        expect(@vehiculo.y = 2 ).to eq(@vehiculo.y)
    end

    it 'Devuelvo "True" si las coordenadas de la ubicacion son numeros enteros positivos' do
        expect(@vehiculo.evaluarUbicacion(2, 2) ).to eq(true)
    end
    it 'Devuelvo "False" si las coordenadas de la ubicacion son numeros enteros negativos' do
        expect(@vehiculo.evaluarUbicacion(-2, -3) ).to eq(false)
    end
    it 'Devuelvo "False" si una de las coordenadas de la ubicacion no es un numero enteros positivo' do
        expect(@vehiculo.evaluarUbicacion(2, -2) ).to eq(false)
    end

    it 'Devuelvo "True" si la orientacion envia una letra que representa un punto cardinal' do
        expect(@vehiculo.definirOrientacion('N') ).to eq(true)
    end
    it 'Devuelvo "False" si la orientacion envia una cadena' do
        expect(@vehiculo.definirOrientacion('Norte') ).to eq(false)
    end
    it 'Devuelvo "False" si la orientacion envia un numero' do
        expect(@vehiculo.definirOrientacion(-5.7) ).to eq(false)
    end
    it 'Devuelvo "N" si la orientacion es configurada con ese punto cardinal' do
        @vehiculo.definirOrientacion('N')
        expect(@vehiculo.orientacion).to eq("N")
    end

    it 'Devuelvo "AAID" si se le agrega esta secuencia al vehiculo' do
        secuencia = Secuencia.new
        secuencia.validar_secuencia("AIDA")
        @vehiculo.agregarSecuencia(secuencia)
        expect(@vehiculo.secuencia.movimientos).to eq("AIDA")
    end

end