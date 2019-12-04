class Terreno
    def initialize()
        @alto = 0
        @ancho = 0
    end
    def definir_dim(x,y)
        @alto = x
        @ancho = y
        return true if (validar(@alto) && validar(@ancho))
        return false
    end
    def validar(num)
        return true if (num >= 0)
        return false
    end
end