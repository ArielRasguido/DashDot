require 'Terreno'

RSpec.describe Terreno do
    it 'Deberia devolver true si configuro las dimensiones del terreno' do
        terreno = Terreno.new
        expect(terreno.definir_dim(5,6)).to eq(true)
    end
    it 'Deberia devolver true si genero un numero positivo' do
        terreno = Terreno.new
        expect(terreno.validar(5)).to eq(true)
    end
    it 'Deberia devolver false si genero un numero negativo' do
        terreno = Terreno.new
        expect(terreno.validar(-5)).to eq(false)
    end
    it 'Deberia devolver false si configuro dimensiones negativas' do
        terreno = Terreno.new
        expect(terreno.definir_dim(-5,-5)).to eq(false)
    end
    it 'Deberia devolver true si configuro dimensiones positivas' do
        terreno = Terreno.new
        expect(terreno.definir_dim(5,4)).to eq(true)
    end
    it 'Deberia devolver false si una de las dimensiones es negativa' do
        terreno = Terreno.new
        expect(terreno.definir_dim(5,-4)).to eq(false)
    end
end