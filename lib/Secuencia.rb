class Secuencia
    def initialize()
        @secuencia = []
        @tam = 0 
    end
    
    def validar(movimiento)
        movimienpos_permitidos = ['A','I','D','N','O','E','S']
        isvalid=0
        for i in 0..(movimienpos_permitidos.length-1)
            if movimiento==movimienpos_permitidos[i]
                isvalid=1
            end
        end
        return true if(isvalid==1)
        return false
    end
    def verificar_secuencia(secuencia_de_movimientos)
        secuencia_de_movimientos.each_char do |single|
            return false if(!validar(single))
        end
        return true
    end
    def establecer_secuencia(secuencia_de_movimientos)
        if(verificar_secuencia(secuencia_de_movimientos))
            secuencia_de_movimientos.each_char do |single|
                @secuencia[@tam] = single
                @tam = @tam+1
            end
            return @secuencia
        end
        return false
    end
    
end