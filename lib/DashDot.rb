# require './lib/Terreno'
# require './lib/Vehiculo'
# require './lib/Secuencia'

class DashDot
    
    def initialize()
        @terreno
        @vehiculos = []
        @tam = 0
    end

    def agregarTerreno(terreno_parametro)
        @terreno = terreno_parametro
    end

    def agregarVehiculo(vehiculo_parametro)
        @vehiculos[@tam] = vehiculo_parametro
        #@tam += 1
    end

    def configurarUbicacionVehiculo(vehiculo, horizontal, vertical)
        if vehiculo.evaluarUbicacion(horizontal, vertical)
            if (horizontal < @terreno.ancho && vertical < @terreno.alto)
                vehiculo.x = horizontal
                vehiculo.y = vertical
                return "x = #{horizontal} ; y = #{vertical}"
            else
                return "Las coordenadas iniciales del vehiculo deben ser menores a las dimensiones del terreno"
            end
        else
            return "Las coordenadas iniciales del vehiculo deben ser numero positivos"
        end
        
    end

    def ejecutarMovimiento(vehiculo, movimiento)
        if (@terreno.alto > 0 && @terreno.ancho > 0 && vehiculo.orientacion)

            case vehiculo.orientacion
            when 'N'
                case movimiento
                when 'I'
                    vehiculo.definirOrientacion('O')
                when 'D'
                    vehiculo.definirOrientacion('E')
                when 'A'
                    if (vehiculo.y < (@terreno.alto - 1) )
                        vehiculo.y +=1
                    else
                        return "Movimiento supera el limite superior del terreno"
                    end
                # else
                #     return "Movimiento invalido"
                end

            when 'E'
                case movimiento
                when 'I'
                    vehiculo.definirOrientacion('N')
                when 'D'
                    vehiculo.definirOrientacion('S')
                when 'A'
                    if (vehiculo.x < (@terreno.ancho - 1) )
                        vehiculo.x +=1
                    else
                        return "Movimiento supera el limite derecho del terreno"
                    end
                # else
                #     return "Movimiento invalido"
                end

            when 'S'
                case movimiento
                when 'I'
                    vehiculo.definirOrientacion('E')
                when 'D'
                    vehiculo.definirOrientacion('O')
                when 'A'
                    if (vehiculo.y > 0 )
                        vehiculo.y -=1
                    else
                        return "Movimiento supera el limite inferior del terreno"
                    end
                # else
                #     return "Movimiento invalido"
                end

            when 'O'
                case movimiento
                when 'I'
                    vehiculo.definirOrientacion('S')
                when 'D'
                    vehiculo.definirOrientacion('N')
                when 'A'
                    if (vehiculo.x > 0 )
                        vehiculo.x -=1
                    else
                        return "Movimiento supera el limite izquierdo del terreno"
                    end
                # else
                #     return "Movimiento invalido"
                end

            # else
            #     return "Niguno"
            end

        else
            return "Parametros configurados erroneamente"
        end

        return "Movimiento: #{movimiento}"
    end

    def ejecutarSecuencia(vehiculo)
        movimientos = []
        cont = 0
        if (vehiculo.secuencia)
            vehiculo.secuencia.movimientos.each_char do |movimiento|
                movimientos[cont] = ejecutarMovimiento(vehiculo, movimiento)
                cont +=1
            end
            return movimientos
        else
            return movimientos[0] = "Secuencia sin programar"
        end
    end

    def obtenerPosicion(vehiculo)
        return "x = #{vehiculo.x} ; y = #{vehiculo.y} ; Orientacion = #{vehiculo.orientacion}"
    end

    def vehiculos
        @vehiculos
    end

    def incrementarTam() 
        @tam +=1
    end

    def obtenerSecuencia(vehiculo)
        vehiculo.secuencia.movimientos
    end

    def asignarSecuencia(vehiculo, secuencia)
        vehiculo.agregarSecuencia(secuencia)
    end

    def terreno
        @terreno
    end

end

# dashDot = DashDot.new
# terreno = Terreno.new
# terreno.definirDimensiones(5, 5)
# dashDot.agregarTerreno(terreno)

# vehiculo1 = Vehiculo.new
# secuencia = Secuencia.new
# vehiculo1.definirOrientacion('N')
# secuencia.validar_secuencia("A")
# vehiculo1.agregarSecuencia(secuencia)
# dashDot.agregarVehiculo(vehiculo1)
# dashDot.configurarUbicacionVehiculo(dashDot.vehiculos[0],1,1)
# puts "X: #{dashDot.vehiculos[0].x}    Y: #{dashDot.vehiculos[0].y}    Orientacion: #{dashDot.vehiculos[0].orientacion}"
# puts dashDot.ejecutarSecuencia(dashDot.vehiculos[0])
# puts dashDot.obtenerPosicion(dashDot.vehiculos[0])


# vehiculo2 = Vehiculo.new
# vehiculo2.definirOrientacion('N')
# secuencia.validar_secuencia("I")
# vehiculo2.agregarSecuencia(secuencia)
# dashDot.incrementarTam()
# dashDot.agregarVehiculo(vehiculo2)
# dashDot.configurarUbicacionVehiculo(dashDot.vehiculos[1],0,0)
# puts "X: #{dashDot.vehiculos[1].x}    Y: #{dashDot.vehiculos[1].y}    Orientacion: #{dashDot.vehiculos[1].orientacion}"
# puts dashDot.ejecutarSecuencia(dashDot.vehiculos[1])
# puts dashDot.obtenerPosicion(dashDot.vehiculos[1])


# vehiculo.definirOrientacion('E')
# dashDot.configurarUbicacionVehiculo(3,3)
# puts "X: #{dashDot.vehiculo.x}    Y: #{dashDot.vehiculo.y}    Orientacion: #{dashDot.vehiculo.orientacion}"
# dashDot.ejecutarSecuencia("ADADADAD")