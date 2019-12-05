Feature:
Como jugador
Quiero iniciar la secuencia de movimientos del vehículo 
Para cambiar la ubicacion inicial del vehiculo.

Scenario:
Given visito la pagina de simulacion
When en el campo "secuencia" ingreso "IA"
And presiono el boton llamado "Establecer secuencia"
And presiono el boton llamado "Iniciar Simulacion"
Then deberia ver el mensaje "movimiento: I"
And deberia ver el mensaje "movimiento: A"