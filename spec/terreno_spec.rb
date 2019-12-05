require 'Terreno'

RSpec.describe Terreno do
    before { @terreno = Terreno.new }

    it 'Devuelvo "True" si el numero enviado es positivo' do
        expect(@terreno.esPositivo(5) ).to eq(true)
    end

    it 'Devuelvo "False" si el numero enviado es negativo' do
        expect(@terreno.esPositivo(-5) ).to eq(false)
    end

    it 'Devuelvo "True" si el numero enviado es un numero entero' do
        expect(@terreno.esNumeroEntero(15) ).to eq(true)
    end

    it 'Devuelvo "False" si el elemento enviado es un decimal' do
        expect(@terreno.esNumeroEntero(15.5) ).to eq(false)
    end

    it 'Devuelvo "False" si el numero enviado esta en formato cardinal' do
        expect(@terreno.esNumeroEntero('cinco') ).to eq(false)
    end

    it 'Devuelvo "True" si las dimensiones configuradas son numeros enteros positivos' do
        expect(@terreno.definirDimensiones(20, 7) ).to eq(true)
    end

    it 'Devuelvo "False" si las dimensiones enviadas no son numeros enteros' do
        expect(@terreno.definirDimensiones(22.2, 7.5) ).to eq(false)
    end

    it 'Devuelvo "False" si las dimensiones enviadas no son numeros enteros positivos' do
        expect(@terreno.definirDimensiones(-22, -7) ).to eq(false)
    end

    it 'Devuelvo "False" si las dimensiones enviadas estan en formato cardinal' do
        expect(@terreno.definirDimensiones('cinco', 'siete') ).to eq(false)
    end

    it 'Devuelvo "False" si una de las dimensiones no es un numero enteros positivo' do
        expect(@terreno.definirDimensiones(20, 7.5) ).to eq(false)
    end

end