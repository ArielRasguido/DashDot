class Terreno

    def initialize()
        @alto = 0
        @ancho = 0
    end

    def esNumeroEntero(num)
        return true if (num.is_a? Integer)
        return false
    end

    def esPositivo(num)
        return true if (num > 0)
        return false
    end

    def validarNumero(num)
        return true if ( esNumeroEntero(num) && esPositivo(num) )
        return false
    end

    def definirDimensiones(ancho_parametro, alto_parametro)
        if ( validarNumero(ancho_parametro) && validarNumero(alto_parametro) )
            @ancho = ancho_parametro
            @alto = alto_parametro
            return true
        end
        return false
    end


    def ancho
        @ancho
    end

    def alto
        @alto
    end

    def configurarTerreno(ancho, alto)
        if definirDimensiones(ancho, alto)
            return "Ancho = #{ancho} : Alto = #{alto}"
        else
            return "Las dimensiones deben ser numero enteros y positivos."
        end
    end

end

