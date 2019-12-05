require 'DashDot'
require 'Terreno'
require 'Vehiculo'

RSpec.describe DashDot do
    before { @dashDot = DashDot.new
             @terreno = Terreno.new
             @terreno.definirDimensiones(10,5)
             @dashDot.agregarTerreno(@terreno)
             @vehiculo = Vehiculo.new
             @dashDot.agregarVehiculo(@vehiculo)
            }

    it 'Devuelve un mensaje de error si las coordenadas iniciales del vehiculo son negativas' do
        expect(@dashDot.configurarUbicacionVehiculo(-6, -2) ).to eq("Las coordenadas iniciales del vehiculo deben ser numero positivos")
    end

    it 'Devuelve un mensaje de error si una de las coordenadas iniciales del vehiculo es negativa' do
        expect(@dashDot.configurarUbicacionVehiculo(-6, 2) ).to eq("Las coordenadas iniciales del vehiculo deben ser numero positivos")
    end

    it 'Devuelve la posicion inicial del vehiculo si este se ecuentra en el interior del terreno' do
        expect(@dashDot.configurarUbicacionVehiculo(6, 2) ).to eq("x = 6 ; y = 2")
    end

    it 'Devuelve un mensaje de error si la posicion inicial del vehiculo esta fuera del terreno' do
        expect(@dashDot.configurarUbicacionVehiculo(16, 2) ).to eq("Las coordenadas iniciales del vehiculo deben ser menores a las dimensiones del terreno")
    end

end