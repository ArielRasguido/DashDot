require 'Secuencia'

RSpec.describe Secuencia do

    it 'Deberia devolver true si ingreso A' do
        secuencia = Secuencia.new
        expect(secuencia.validar("A")).to eq(true)
    end
    it 'Deberia devolver true si ingreso I' do
        secuencia = Secuencia.new
        expect(secuencia.validar("I")).to eq(true)
    end
    it 'Deberia devolver false si ingreso R' do
        secuencia = Secuencia.new
        expect(secuencia.validar("R")).to eq(false)
    end
    it 'Deberia devolver false si ingreso cualquier letra distinta a: A, I o D' do
        secuencia = Secuencia.new
        expect(secuencia.validar_movimientos("AIAR")).to eq(false)
    end
    it 'Deberia devolver true si ingreso una secuencia de letras solo con letras A, I o D' do
        secuencia = Secuencia.new
        expect(secuencia.validar_movimientos("AIADA")).to eq(true)
    end
    it 'Deberia devolver la cadena [A,I,D,A] si ingreso la secuencia: "AIDA" ' do
        secuencia = Secuencia.new
        expect(secuencia.validar_secuencia("AIDA")).to eq(true)
    end
end