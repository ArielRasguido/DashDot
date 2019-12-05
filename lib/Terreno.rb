class Terreno

    # def initialize()
    #     @alto = 0
    #     @ancho = 0
    # end

    def definirDimensiones(alto_parametro, ancho_parametro)
        if ( validarNumero(alto_parametro) && validarNumero(ancho_parametro) )
            @alto = alto_parametro
            @ancho = ancho_parametro
            return true
        end
        return false
    end

    def esPositivo(num)
        return true if (num > 0)
        return false
    end

    def esNumeroEntero(num)
        return true if (num.is_a? Integer)
        return false
    end

    def validarNumero(num)
        return true if ( esNumeroEntero(num) && esPositivo(num) )
        return false
    end

    def ancho
        @ancho
    end

    def alto
        @alto
    end

    def configurarTerreno(alto, ancho)
        if definirDimensiones(alto, ancho)
            return "Alto = #{alto} ; Ancho = #{ancho}"
        else
            return "Las dimensiones deben ser numero enteros y positivos"
        end
    end

end

# terreno = Terreno.new
# resp = terreno.esNumeroEntero(5)
# resp = terreno.esNumeroEntero("cinco")
# resp = terreno.esNumeroEntero(1.15)
# puts resp

# terreno = Terreno.new
# terreno.definirDimensiones(15,5)
# puts terreno.alto
# puts terreno.ancho

# terreno = Terreno.new
# resp = terreno.configurarTerreno(15,5)
# puts resp