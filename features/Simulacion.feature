Feature:
Como jugador
Quiero ingresar la secuencia de movimientos del vehículo 
Para controlar la serie de pasos que este debería seguir.

Scenario:
Given visito la pagina de simulacion
Then deberia ver un mensaje "Simulacion"

Scenario:
Given visito la pagina de simulacion
When en el campo "secuencia" ingreso "IADAN"
And presiono el boton "Iniciar Simulacion"
Then deberia ver el mensaje "movimientos del vehiculo: IADAN"
