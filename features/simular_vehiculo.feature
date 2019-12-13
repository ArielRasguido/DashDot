Feature:
Como jugador
Quiero poder iniciar una secuencia de movimientos
Para cambiar la ubicacion inicial del vehiculo.

Scenario:
Given Ingreso a la pagina de configuracion
And En el campo "ancho" ingreso "5"
And En el campo "alto" ingreso "5"
And En el campo "x" ingreso "1"
And En el campo "y" ingreso "2"
And En el campo "orientacion" ingreso "N"
And En el campo "secuencia" ingreso "A"
And presiono el boton "Configurar"
When presiono el boton "Aceptar"
Then deberia ver "x = 1 ; y = 3 ; Orientacion = N"