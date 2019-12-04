Feature:
    Como jugador
    Quiero configurar las coordenadas iniciales del vehiculo
    Para que este tenga una posicion inicial en el terreno

Scenario:
    Given Ingreso a la pagina de configuracion
    And En el campo "x" ingreso "5"
    And En el campo "y" ingreso "2"
    When presiono el boton "Configurar"
    Then deberia ver "Vehiculo: x = 5 y = 2"