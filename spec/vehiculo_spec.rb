require 'Vehiculo'

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

    it 'Devuelvo "False" si el numero enviado es una cadena' do
        expect(@vehiculo.esPositivo("uno") ).to eq(false)
    end

    it 'Devuelvo "True" si las coordenadas de la ubicacion son numeros enteros positivos' do
        expect(@vehiculo.evaluarUbicacion(2, 2) ).to eq(true)
    end

    it 'Devuelvo "False" si las coordenadas de la ubicacion son numeros enteros negativos' do
        expect(@vehiculo.evaluarUbicacion(-2, -3) ).to eq(false)
    end

    it 'Devuelvo "False" si las coordenadas son numeros en formato cardinal' do
        expect(@vehiculo.evaluarUbicacion("dos", "tres") ).to eq(false)
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

end