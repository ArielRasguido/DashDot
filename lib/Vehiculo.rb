class Vehiculo

    def initialize()
        @x = 0
        @y = 0
        @orientacion
    end

    def esPositivo(elem)
        numero = elem.to_i
        return true if (numero > 0)
        return false
    end

    def evaluarUbicacion(horizontal, vertical)
        if ( esPositivo(horizontal) && esPositivo(vertical) )
            return true
        end
        return false
    end

    def definirOrientacion(punto_cardinal)
        if (punto_cardinal == 'N' || punto_cardinal == 'S' || punto_cardinal == 'E' || punto_cardinal == 'O')
            @orientacion = punto_cardinal
            return true
        else
            return false  
        end
    end


    def configurarOrientacion(punto_cardinal)
        if definirOrientacion(punto_cardinal)
            return "Orientacion = #{punto_cardinal}"
        else
            return "La orientacion deben ser una letra que represente un punto cardinal: N, S, E, O"
        end
    end

    def x
        @x
    end

    def y
        @y
    end

    def x=(x)
        @x = x
    end

    def y=(y)
        @y = y
    end
    
end