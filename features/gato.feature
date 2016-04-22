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
	Then Tengo que ver "<a href="/0/0">X</a>"

Scenario: Jugar X en 1,0 y luego O en 1,1
	Given Voy al inicio
	When Iniciar el juego
		And Jugar Posicion 1,0
		And Jugar Posicion 1,1
	Then Tengo que ver "<a href="/1/0">X</a>"
		And Tengo que ver "<a href="/1/1">O</a>"

Scenario: Jugar X en 1,1 y luego O en 1,2
	Given Voy al inicio
	When Iniciar el juego
		And Jugar Posicion 1,1
		And Jugar Posicion 1,2
	Then Tengo que ver "<a href="/1/1">X</a>"
		And Tengo que ver "<a href="/1/2">O</a>"

Scenario: Jugar X en 1,0 y luego O en 1,1 y Jugar X en 1,2
	Given Voy al inicio
	When Iniciar el juego
		And Jugar Posicion 1,0
		And Jugar Posicion 1,1
		And Jugar Posicion 1,2
	Then Tengo que ver "<a href="/1/0">X</a>"
		And Tengo que ver "<a href="/1/1">O</a>"
		And Tengo que ver "<a href="/1/2">X</a>"

Scenario: Jugar X en 0,0 y luego O en 0,1 y Jugar X en 2,0 y Jugar O en 2,2
	Given Voy al inicio
	When Iniciar el juego
		And Jugar Posicion 0,0
		And Jugar Posicion 0,1
		And Jugar Posicion 2,0
		And Jugar Posicion 2,2
	Then Tengo que ver "<a href="/0/0">X</a>"
		And Tengo que ver "<a href="/0/1">O</a>"
		And Tengo que ver "<a href="/2/0">X</a>"
		And Tengo que ver "<a href="/2/2">O</a>"

Scenario: Ganador X -- Jugar X en 0,1 - 1,1 - 2,1
	Given Voy al inicio
	When Iniciar el juego
		And Jugar Posicion 0,1
		And Jugar Posicion 0,0
		And Jugar Posicion 1,1
		And Jugar Posicion 0,2
		And Jugar Posicion 2,1

	Then Tengo que ver "<a href="/0/1">X</a>"
		And Tengo que ver "<a href="/0/0">O</a>"
		And Tengo que ver "<a href="/1/1">X</a>"
		And Tengo que ver "<a href="/0/2">O</a>"
		And Tengo que ver "<a href="/2/1">X</a>"

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

	Then Tengo que ver "<a href="/1/0">X</a>"
		And Tengo que ver "<a href="/0/0">O</a>"
		And Tengo que ver "<a href="/2/0">X</a>"
		And Tengo que ver "<a href="/1/1">O</a>"
		And Tengo que ver "<a href="/2/1">X</a>"
		And Tengo que ver "<a href="/2/2">O</a>"

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

	Then Tengo que ver "<a href="/0/0">X</a>"
		And Tengo que ver "<a href="/1/2">O</a>"
		And Tengo que ver "<a href="/0/2">X</a>"
		And Tengo que ver "<a href="/0/1">O</a>"
		And Tengo que ver "<a href="/1/0">X</a>"
		And Tengo que ver "<a href="/1/1">O</a>"
		And Tengo que ver "<a href="/2/2">X</a>"
		And Tengo que ver "<a href="/2/0">O</a>"
		And Tengo que ver "<a href="/2/1">X</a>"

		And Tengo que ver "Ganador: Ninguno"
