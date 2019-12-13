class Secuencia
    def initialize()
        @movimientos
        # @movimientos = []
        # @tam = 0 
    end
    
    def validar(movimiento)
        if (movimiento == 'A' || movimiento == 'I' || movimiento == 'D')
            return true;
        else
            return false;
        end
    end

    def validar_movimientos(secuencia_de_movimientos)
        secuencia_de_movimientos.each_char do |single|
            return false if(!validar(single))
        end
        return true
    end

    def validar_secuencia(secuencia_de_movimientos)
       restablecer()
        if(validar_movimientos(secuencia_de_movimientos))
            secuencia_de_movimientos.each_char do |single|
                @movimientos << single
                # @movimientos[@tam] = single
                # @tam = @tam+1
            end
            return true
        end
        return false
    end

    def movimientos
        @movimientos
    end
    def restablecer()
        @movimientos = ""
        # @movimientos = []
        # @tam = 0
    end

    def configurar_secuencia(secuencia_de_movimientos)
        if validar_secuencia(secuencia_de_movimientos)
            return "Movimientos del vehiculo = #{@movimientos}"
        else
            return "Secuencia NO Permitida"
        end
    end
    
end
