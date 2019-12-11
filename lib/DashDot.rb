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


end
