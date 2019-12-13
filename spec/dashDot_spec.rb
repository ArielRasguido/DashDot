require 'DashDot'
require 'Terreno'
require 'Vehiculo'
require 'Secuencia'

RSpec.describe DashDot do
    before { @dashDot = DashDot.new
             @terreno = Terreno.new
             @terreno.definirDimensiones(5,5)
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
        expect(@dashDot.configurarUbicacionVehiculo(4, 2) ).to eq("x = 4 ; y = 2")
    end

    it 'Devuelve un mensaje de error si la posicion inicial del vehiculo esta fuera del terreno' do
        expect(@dashDot.configurarUbicacionVehiculo(16, 2) ).to eq("Las coordenadas iniciales del vehiculo deben ser menores a las dimensiones del terreno")
    end

    it 'Devuelve un mensaje de alerta si se trata de mover el vehiculo sin haber definido una orientacion previa' do
        expect(@dashDot.ejecutarMovimiento('A')).to eq("Parametros configurados erroneamente")
    end

    context "Movimiento del vehiculo" do
        before {@dashDot.vehiculo.definirOrientacion('N') }

        it 'Devuelve "E" si la orientacion del vehiculo era "N" inicialmente y este gira a la derecha una vez' do
            @dashDot.ejecutarMovimiento('D')
            expect(@dashDot.vehiculo.orientacion).to eq("E")
        end
    
        it 'Devuelve la posicion y=3 si el vehiculo incialmente se encontraba en las coordendas (x=1,y=2) y este avanza una casilla hacia el Norte' do
            @dashDot.configurarUbicacionVehiculo(1, 2)
            @dashDot.ejecutarMovimiento('A')
            expect(@dashDot.vehiculo.y).to eq(3)
        end

        context "Movimiento del vehiculo sin salir del terreno" do
            it 'Devuelve un mensaje de alerta si el vehiculo trata de avanzar una casilla hacia el Norte estando en el limite superior del terreno (x=1,y=4)' do
                @dashDot.configurarUbicacionVehiculo(1, 4)
                expect(@dashDot.ejecutarMovimiento('A')).to eq("Movimiento supera el limite superior del terreno")
            end
            it 'Devuelve un mensaje de alerta si el vehiculo trata de avanzar una casilla hacia el Este estando en el limite derecho del terreno (x=4,y=1)' do
                @dashDot.configurarUbicacionVehiculo(4, 1)
                @dashDot.vehiculo.definirOrientacion('E')
                expect(@dashDot.ejecutarMovimiento('A')).to eq("Movimiento supera el limite derecho del terreno")
            end
            it 'Devuelve un mensaje de alerta si el vehiculo trata de avanzar una casilla hacia el Sur estando en el limite inferior del terreno (x=2,y=0)' do
                @dashDot.configurarUbicacionVehiculo(2, 0)
                @dashDot.vehiculo.definirOrientacion('S')
                expect(@dashDot.ejecutarMovimiento('A')).to eq("Movimiento supera el limite inferior del terreno")
            end
            it 'Devuelve un mensaje de alerta si el vehiculo trata de avanzar una casilla hacia el Oeste estando en el limite izquierdo del terreno (x=0,y=2)' do
                @dashDot.configurarUbicacionVehiculo(0, 2)
                @dashDot.vehiculo.definirOrientacion('O')
                expect(@dashDot.ejecutarMovimiento('A')).to eq("Movimiento supera el limite izquierdo del terreno")
            end
        end

        context "Secuencia de movimientos del vehiculo" do
            before { @secuencia = Secuencia.new }
            it 'Devuelve la posicion y=4 si el estado inicial del vehiculo era (x=1,y=2, N) y este avanza dos casillas hacia el Norte' do
                @dashDot.configurarUbicacionVehiculo(1, 2)
                @secuencia.validar_secuencia("AA")
                @dashDot.vehiculo.agregarSecuencia(@secuencia)
                @dashDot.ejecutarSecuencia()
                expect(@dashDot.vehiculo.y).to eq(4)
            end

            it 'Devuelve un mensaje de alerta si la plataforma trata de ejecutar movimientos en el vehiculo sin haber programada una secuencia previamente' do
                @dashDot.configurarUbicacionVehiculo(1, 2)
                expect(@dashDot.ejecutarSecuencia()).to eq("Secuencia sin programar")
            end

            it 'Devuelve la posicion y orientacion final del vehiculo (1,3 N) cuyo estado incial era (1,2 N) tras ejecutar la secuencia "IAIAIAIAA"' do
                @dashDot.configurarUbicacionVehiculo(1, 2)
                @secuencia.validar_secuencia("IAIAIAIAA")
                @dashDot.vehiculo.agregarSecuencia(@secuencia)
                @dashDot.ejecutarSecuencia()
                expect(@dashDot.obtenerPosicion()).to eq("x = 1 ; y = 3 ; Orientacion = N")
            end
        end

    end
    

end