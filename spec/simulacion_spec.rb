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
    it 'Deberia devolver true si ingreso D' do
        secuencia = Secuencia.new
        expect(secuencia.validar("D")).to eq(true)
    end
    it 'Deberia devolver false si ingreso R' do
        secuencia = Secuencia.new
        expect(secuencia.validar("R")).to eq(false)
    end
    it 'Deberia devolver false si ingreso cualquier letra distinta a: A, I o D' do
        secuencia = Secuencia.new
        expect(secuencia.verificar_secuencia("AIAR")).to eq(false)
    end
    it 'Deberia devolver true si ingreso una secuencia de letras solo con letras A, I o D' do
        secuencia = Secuencia.new
        expect(secuencia.verificar_secuencia("AIADA")).to eq(true)
    end
    it 'Deberia devolver true si ingreso cualquiera de las letras: N O E S ' do
        secuencia = Secuencia.new
        expect(secuencia.verificar_secuencia("AIADAN")).to eq(true)
    end
    it 'Deberia devolver la secuencia [A,I,N,D,A] si ingreso la secuencia: "AINDA" ' do
        secuencia = Secuencia.new
        expect(secuencia.establecer_secuencia("AINDA")).to eq(['A','I','N','D','A'])
    end
    it 'Deberia devolver la cadena [A,I,N,D,A] si ingreso la secuencia: "AINDA" ' do
        secuencia = Secuencia.new
        expect(secuencia.establecer_secuencia("AINDA")).to eq(['A','I','N','D','A'])
    end
end