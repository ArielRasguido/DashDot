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
                end
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
