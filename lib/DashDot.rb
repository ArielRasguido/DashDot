# require './lib/Terreno'
# require './lib/Vehiculo'
# require './lib/Secuencia'

class DashDot
    
    def initialize()
        @terreno
        @vehiculo
    end

    def agregarTerreno(terreno_parametro)
        @terreno = terreno_parametro
    end

    def agregarVehiculo(vehiculo_parametro)
        @vehiculo = vehiculo_parametro
    end

    def configurarUbicacionVehiculo(horizontal, vertical)
        if @vehiculo.evaluarUbicacion(horizontal, vertical)
            if (horizontal < @terreno.ancho && vertical < @terreno.alto)
                @vehiculo.x = horizontal
                @vehiculo.y = vertical
                return "x = #{horizontal} ; y = #{vertical}"
            else
                return "Las coordenadas iniciales del vehiculo deben ser menores a las dimensiones del terreno"
            end
        else
            return "Las coordenadas iniciales del vehiculo deben ser numero positivos"
        end
        
    end

    def ejecutarMovimiento(movimiento)
        if (@terreno.alto > 0 && @terreno.ancho > 0 && @vehiculo.orientacion)

            case @vehiculo.orientacion
            when 'N'
                case movimiento
                when 'I'
                    @vehiculo.definirOrientacion('O')
                when 'D'
                    @vehiculo.definirOrientacion('E')
                when 'A'
                    if (@vehiculo.y < (@terreno.alto - 1) )
                        @vehiculo.y +=1
                    else
                        return "Movimiento supera el limite superior del terreno"
                    end
                # else
                #     return "Movimiento invalido"
                end

            when 'E'
                case movimiento
                when 'I'
                    @vehiculo.definirOrientacion('N')
                when 'D'
                    @vehiculo.definirOrientacion('S')
                when 'A'
                    if (@vehiculo.x < (@terreno.ancho - 1) )
                        @vehiculo.x +=1
                    else
                        return "Movimiento supera el limite derecho del terreno"
                    end
                # else
                #     return "Movimiento invalido"
                end

            when 'S'
                case movimiento
                when 'I'
                    @vehiculo.definirOrientacion('E')
                when 'D'
                    @vehiculo.definirOrientacion('O')
                when 'A'
                    if (@vehiculo.y > 0 )
                        @vehiculo.y -=1
                    else
                        return "Movimiento supera el limite inferior del terreno"
                    end
                # else
                #     return "Movimiento invalido"
                end

            when 'O'
                case movimiento
                when 'I'
                    @vehiculo.definirOrientacion('S')
                when 'D'
                    @vehiculo.definirOrientacion('N')
                when 'A'
                    if (@vehiculo.x > 0 )
                        @vehiculo.x -=1
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

    def ejecutarSecuencia()
        movimientos = []
        cont = 0
        if (@vehiculo.secuencia)
            @vehiculo.secuencia.movimientos.each_char do |movimiento|
                movimientos[cont] = ejecutarMovimiento(movimiento)
                cont +=1
            end
            return movimientos
        else
            return movimientos[0] = "Secuencia sin programar"
        end
    end

    def obtenerPosicion()
        return "x = #{@vehiculo.x} ; y = #{@vehiculo.y} ; Orientacion = #{@vehiculo.orientacion}"
    end

    # def terreno
    #     @terreno
    # end

    def vehiculo
        @vehiculo
    end

end

#Prueba Travis

# dashDot = DashDot.new
# terreno = Terreno.new
# terreno.definirDimensiones(5, 5)
# dashDot.agregarTerreno(terreno)

# vehiculo = Vehiculo.new
# vehiculo.definirOrientacion('N')
# secuencia = Secuencia.new
# # secuencia.validar_secuencia("IAIAIAIAA")
# secuencia.validar_secuencia("AA")
# vehiculo.agregarSecuencia(secuencia)
# dashDot.agregarVehiculo(vehiculo)

# dashDot.configurarUbicacionVehiculo(1,2)
# puts "X: #{dashDot.vehiculo.x}    Y: #{dashDot.vehiculo.y}    Orientacion: #{dashDot.vehiculo.orientacion}"
# puts dashDot.ejecutarSecuencia()


# vehiculo.definirOrientacion('E')
# dashDot.configurarUbicacionVehiculo(3,3)
# puts "X: #{dashDot.vehiculo.x}    Y: #{dashDot.vehiculo.y}    Orientacion: #{dashDot.vehiculo.orientacion}"
# dashDot.ejecutarSecuencia("ADADADAD")