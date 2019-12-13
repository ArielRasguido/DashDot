Feature:
Como Jugador
Quiero ver un saludo de bienvenida al entrar a la pagina
Para sentirme a gusto

Feature:
Como Jugador
Quiero agregar un vehiculo a la plataforma
Para poder simular su movimiento

Feature:
Como Jugador
Quiero ingresar a la pagina de simulacion
Para ver los resultados de los movimientos


Scenario:
    Given visito la pagina principal
    Then deberia ver un mensaje "Bienvenido al Juego"

Scenario:
    Given visito la pagina principal
    When presiono el boton "Agregar vehiculo"
    Then deberia enviarme a la pagina de configuracion

Scenario:
    Given visito la pagina principal
    When presiono el boton "Simular"
    Then deberia enviarme a la pagina de simulacion