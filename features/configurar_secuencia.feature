Feature:
Como jugador
Quiero ingresar la secuencia de movimientos del vehículo 
Para controlar la serie de pasos que este debería seguir.

Scenario:
Given Ingreso a la pagina de configuracion
When En el campo "secuencia" ingreso "IADA"
And presiono el boton "Validar"
Then deberia ver "Movimientos del vehiculo = IADA"

Scenario:
Given Ingreso a la pagina de configuracion
When En el campo "secuencia" ingreso "IADAR"
And presiono el boton "Validar"
Then deberia ver "Secuencia NO Permitida"
