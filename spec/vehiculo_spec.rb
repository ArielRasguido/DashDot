require 'Vehiculo'

RSpec.describe Vehiculo do
    #before { @vehiculo = Vehiculo.new }

    it 'Deberia devolver true si configuro la ubicacion inicial del vehiculo' do
        vehiculo = Vehiculo.new
        expect(vehiculo.definir_ubicacion(5,4)).to eq(true)
    end
    it 'Deberia devolver false si configuro la unicacion inicial del vehiculo' do
        vehiculo = Vehiculo.new
        expect(vehiculo.definir_ubicacion(5,4)).to eq(true)
    end
end