
Feature:
Como Jugador
Quiero ver un saludo de bienvenida al entrar a la pagina
Para sentirme a gusto

Feature:
Como Jugador
Quiero presionar el boton de configuraciones
Para ingresar a las configuraciones del juego

Feature:
Como Jugador
Quiero presionar el bonton de jugar
Para ingresar al juego


Scenario:
Given visito la pagina principal
Then deberia ver un mensaje "Bienvenido al Juego"

Scenario:
    Given visito la pagina principal
    When presiono el boton designado para "Configurar"
    Then deberia enviarme a la pagina configuracion

# Scenario:
#     Given visito la pagina principal
#     When presiono el boton designado para "jugar"
#     Then deberia enviarme a la pagina simulacion