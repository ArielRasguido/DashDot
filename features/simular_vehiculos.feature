Feature:
Como jugador
Quiero poder iniciar la secuencia de movimientos de varios vehiculos
Para cambiar la ubicacion inicial de los mismos

Scenario:
Given Ingreso a la pagina de configuracion
And En el campo "ancho" ingreso "5"
And En el campo "alto" ingreso "5"
And En el campo "x" ingreso "1"
And En el campo "y" ingreso "2"
And En el campo "orientacion" ingreso "N"
And En el campo "secuencia" ingreso "AA"
And presiono el boton "Configurar"
And presiono el boton "Aceptar"
And presiono el boton "Simular"
When Vuelvo a la pagina de configuracion
And En el campo "x" ingreso "0"
And En el campo "y" ingreso "0"
And En el campo "orientacion" ingreso "N"
And En el campo "secuencia" ingreso "ADA"
And presiono el boton "Configurar"
And presiono el boton "Aceptar"
And presiono el boton "Simular"
Then deberia ver "x = 1 ; y = 4 ; Orientacion = N"
And deberia ver "x = 1 ; y = 1 ; Orientacion = E"