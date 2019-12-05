Feature:
Como jugador
Quiero ingresar la secuencia de movimientos del vehículo 
Para controlar la serie de pasos que este debería seguir.

Scenario:
Given visito la pagina de simulacion
Then deberia ver el mensaje "Simulacion"

Scenario:
Given visito la pagina de simulacion
When en el campo "secuencia" ingreso "IADAN"
And presiono el boton "Establecer secuencia"
Then deberia ver el mensaje "movimientos del vehiculo: IADAN"

Scenario:
Given visito la pagina de simulacion
When en el campo "secuencia" ingreso "IADAR"
And presiono el boton "Establecer secuencia"
Then deberia ver el mensaje "movimientos del vehiculo: SECUENCIA NO PERMITIDA!"
