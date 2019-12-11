class Secuencia
    def initialize()
        @secuencia = []
        @tam = 0 
    end
    
    def validar(movimiento)
        if (movimiento == 'A' || movimiento == 'I' || movimiento == 'D')
            return true;
        else
            return false;
        end
    end
    def verificar_secuencia(secuencia_de_movimientos)
        secuencia_de_movimientos.each_char do |single|
            return false if(!validar(single))
        end
        return true
    end
    def establecer_secuencia(secuencia_de_movimientos)
       restablecer()
        if(verificar_secuencia(secuencia_de_movimientos))
            secuencia_de_movimientos.each_char do |single|
                @secuencia[@tam] = single
                @tam = @tam+1
            end
            return true
        end
        return false
    end
    def secuencia
        @secuencia
    end
    def restablecer()
        @secuencia = []
        @tam = 0
    end
    
end