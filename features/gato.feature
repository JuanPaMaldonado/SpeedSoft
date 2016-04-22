Feature: Gato

Scenario: Ver pantalla de bienvenida
	Given Voy al inicio
	Then Tengo que ver "Bienvenido a GATOX"

Scenario: Ver pantalla de jugar
	Given Voy al inicio
	When Iniciar el juego
	Then Tengo que ver "Jugando"

Scenario: Volver a jugar
	Given Voy a jugar
	When Volver a jugar
	Then Tengo que ver "Bienvenido a GATOX"

Scenario: Jugar X en 0,0
	Given Voy al inicio
	When Iniciar el juego
		And Jugar Posicion 0,0
	Then Tiene que aparecer en la posicion 0,0 una "X"

Scenario: Jugar X en 1,0 y luego O en 1,1
	Given Voy al inicio
	When Iniciar el juego
		And Jugar Posicion 1,0
		And Jugar Posicion 1,1
	Then Tiene que aparecer en la posicion 1,0 una "X"
		And Tiene que aparecer en la posicion 1,1 una "O"

Scenario: Jugar X en 1,1 y luego O en 1,2
	Given Voy al inicio
	When Iniciar el juego
		And Jugar Posicion 1,1
		And Jugar Posicion 1,2
	Then Tiene que aparecer en la posicion 1,1 una "X"
		And Tiene que aparecer en la posicion 1,2 una "O"

Scenario: Jugar X en 1,0 y luego O en 1,1 y Jugar X en 1,2
	Given Voy al inicio
	When Iniciar el juego
		And Jugar Posicion 1,0
		And Jugar Posicion 1,1
		And Jugar Posicion 1,2
	Then Tiene que aparecer en la posicion 1,0 una "X"
		And Tiene que aparecer en la posicion 1,1 una "O"
		And Tiene que aparecer en la posicion 1,2 una "X"

Scenario: Jugar X en 0,0 y luego O en 0,1 y Jugar X en 2,0 y Jugar O en 2,2
	Given Voy al inicio
	When Iniciar el juego
		And Jugar Posicion 0,0
		And Jugar Posicion 0,1
		And Jugar Posicion 2,0
		And Jugar Posicion 2,2
	Then Tiene que aparecer en la posicion 0,0 una "X"
		And Tiene que aparecer en la posicion 0,1 una "O"
		And Tiene que aparecer en la posicion 2,0 una "X"
		And Tiene que aparecer en la posicion 2,2 una "O"

Scenario: Ganador X -- Jugar X en 0,1 - 1,1 - 2,1
	Given Voy al inicio
	When Iniciar el juego
		And Jugar Posicion 0,1
		And Jugar Posicion 0,0
		And Jugar Posicion 1,1
		And Jugar Posicion 0,2
		And Jugar Posicion 2,1

	Then Tiene que aparecer en la posicion 0,1 una "X"
		And Tiene que aparecer en la posicion 0,0 una "O"
		And Tiene que aparecer en la posicion 1,1 una "X"
		And Tiene que aparecer en la posicion 0,2 una "O"
		And Tiene que aparecer en la posicion 2,1 una "X"

		And Tengo que ver "Ganador: X"

Scenario: Ganador O -- Jugar O en 0,0 - 1,1 - 2,2
	Given Voy al inicio
	When Iniciar el juego
		And Jugar Posicion 1,0
		And Jugar Posicion 0,0
		And Jugar Posicion 2,0
		And Jugar Posicion 1,1
		And Jugar Posicion 2,1
		And Jugar Posicion 2,2

	Then Tiene que aparecer en la posicion 1,0 una "X"
		And Tiene que aparecer en la posicion 0,0 una "O"
		And Tiene que aparecer en la posicion 2,0 una "X"
		And Tiene que aparecer en la posicion 1,1 una "O"
		And Tiene que aparecer en la posicion 2,1 una "X"
		And Tiene que aparecer en la posicion 2,2 una "O"

		And Tengo que ver "Ganador: O"

Scenario: Juego completo sin ganador
	Given Voy al inicio
	When Iniciar el juego
		And Jugar Posicion 0,0
		And Jugar Posicion 1,2
		And Jugar Posicion 0,2
		And Jugar Posicion 0,1
		And Jugar Posicion 1,0
		And Jugar Posicion 1,1
		And Jugar Posicion 2,2
		And Jugar Posicion 2,0
		And Jugar Posicion 2,1

	Then Tiene que aparecer en la posicion 0,0 una "X"
		And Tiene que aparecer en la posicion 1,2 una "O"
		And Tiene que aparecer en la posicion 0,2 una "X"
		And Tiene que aparecer en la posicion 0,1 una "O"
		And Tiene que aparecer en la posicion 1,0 una "X"
		And Tiene que aparecer en la posicion 1,1 una "O"
		And Tiene que aparecer en la posicion 2,2 una "X"
		And Tiene que aparecer en la posicion 2,0 una "O"
		And Tiene que aparecer en la posicion 2,1 una "X"
		And Tengo que ver "Ganador: Ninguno"



