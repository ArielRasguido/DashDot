Feature:
    Como jugador
    Quiero configurar las coordenadas iniciales del vehiculo
    Para que este tenga una posicion inicial en el terreno

Scenario:
    Given Ingreso a la pagina de configuracion
    And En el campo "ancho" ingreso "7"
    And En el campo "alto" ingreso "5"
    And En el campo "x" ingreso "6"
    And En el campo "y" ingreso "2"
    And En el campo "orientacion" ingreso "N"
    When presiono el boton "Configurar"
    Then deberia ver "x = 6 ; y = 2"
    And deberia ver "Orientacion = N"

# Scenario:
#     Given Ingreso a la pagina de configuracion
#     And En el campo "ancho" ingreso "10"
#     And En el campo "alto" ingreso "5"
#     And En el campo "x" ingreso "-5"
#     And En el campo "y" ingreso "2"
#     And En el campo "orientacion" ingreso "N"
#     When presiono el boton "Configurar"
#     Then deberia ver "Las coordenadas iniciales del vehiculo deben ser numero positivos"
#     And deberia ver "Orientacion = N"

Scenario:
    Given Ingreso a la pagina de configuracion
    And En el campo "ancho" ingreso "8"
    And En el campo "alto" ingreso "5"
    And En el campo "x" ingreso "15"
    And En el campo "y" ingreso "2"
    And En el campo "orientacion" ingreso "N"
    When presiono el boton "Configurar"
    Then deberia ver "Las coordenadas iniciales del vehiculo deben ser menores a las dimensiones del terreno"
    And deberia ver "Orientacion = N"

# Scenario:
#     Given Ingreso a la pagina de configuracion
#     And En el campo "ancho" ingreso "10"
#     And En el campo "alto" ingreso "5"
#     And En el campo "x" ingreso "5"
#     And En el campo "y" ingreso "2"
#     And En el campo "orientacion" ingreso "Norte"
#     When presiono el boton "Configurar"
#     Then deberia ver "x = 5 ; y = 2"
#     And deberia ver "La orientacion deben ser una letra que represente un punto cardinal: N, S, E, O"