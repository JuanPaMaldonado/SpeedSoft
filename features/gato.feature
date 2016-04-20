Feature: Gato

Scenario: Ver pantalla de bienvenida
	Given Voy al inicio
	Then Tengo que ver "Bienvenido a GATOX"

Scenario: Ver pantalla de jugar
	Given Voy al inicio
	When Iniciar el juego
	Then Tengo que ver "Jugando"

Scenario: Ver pantalla de jugar
	Given Voy al inicio
	When Iniciar el juego
	Then Tengo que ver "Ganador: Ninguno"

Scenario: Jugar X en 0,0
	Given Voy al inicio
	When Iniciar el juego
		And Jugar Posicion 0,0
	Then Tengo que ver "<a href="/0/0">p00</a>"

Scenario: Jugar X en 1,0
	Given Voy al inicio
	When Iniciar el juego
		And Jugar Posicion 1,0
	Then Tengo que ver "<a href="/1/0">p10</a>"

