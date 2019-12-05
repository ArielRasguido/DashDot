Feature:
    Como jugador
    Quiero configurar el alto y ancho del terreno
    Para delimitar el espacio de movimiento

Scenario:
    Given Ingreso a la pagina de configuracion
    And En el campo "ancho" ingreso "10"
    And En el campo "alto" ingreso "5"
    When presiono el boton "Configurar"
    #Then deberia ver "Ancho = 10 : Alto = 5"
    Then deberia ver "Ancho = 10 : Alto = 5"

Scenario:
    Given Ingreso a la pagina de configuracion
    And En el campo "ancho" ingreso "10"
    And En el campo "alto" ingreso "-5"
    When presiono el boton "Configurar"
    Then deberia ver "Las dimensiones deben ser numero enteros y positivos."