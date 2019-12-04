class Vehiculo
    def initialize()
        @x = 0
        @y = 0
    end

    def definir_ubicacion(x,y)
        @x = x
        @y = y
        return true if (esPositivo(@x) && esPositivo(@y))
        return false
    end

    def esPositivo(num)
        return true if (num >= 0)
        return false
    end
    
end