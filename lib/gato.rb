class Gato
	def initialize
		@fila1 = ["B","B","B"]
		@fila2 = ["B","B","B"]
		@fila3 = ["B","B","B"]
		@marca = "X"
	end

	def marcarPosicion x,y

		if validaDisponibilidadPosicion(x,y) == false
			return
		end

		if x==0
			@fila1[y] = @marca
		end
		if x==1
			@fila2[y] = @marca
		end
		if x==2
			@fila3[y] = @marca
		end

		if @marca == "X"
			@marca = "O"
		else
			@marca = "X"
		end
	end

	def validaDisponibilidadPosicion x,y
		disponible = true
		if x==0 and (@fila1[y]=="X" or @fila1[y]=="O")
			disponible = false
		end
		if x==1 and (@fila2[y]=="X" or @fila2[y]=="O")
			disponible = false
		end
		if x==2 and (@fila3[y]=="X" or @fila3[y]=="O")
			disponible = false
		end

		return disponible
	end

	def consultarPosicion x,y
		marcar = ""
		if x==0
			marcar = @fila1[y]
		end
		if x==1
			marcar = @fila2[y]
		end
		if x==2
			marcar = @fila3[y]
		end
		marcar
	end

	def consultaGanador
		ganador = "Ninguno"
		if @fila1[0]!="B" and @fila1[0]==@fila1[1] and @fila1[1]==@fila1[2]
			ganador = @fila1[0]
		end
		if @fila2[0]!="B" and @fila2[0]==@fila2[1] and @fila2[1]==@fila2[2]
			ganador = @fila2[0]
		end
		if @fila3[0]!="B" and @fila3[0]==@fila3[1] and @fila3[1]==@fila3[2]
			ganador = @fila3[0]
		end

		if @fila1[0]!="B" and @fila1[0]==@fila2[0] and @fila2[0]==@fila3[0]
			ganador = @fila1[0]
		end
		if @fila1[1]!="B" and @fila1[1]==@fila2[1] and @fila2[1]==@fila3[1]
			ganador = @fila1[1]
		end
		if @fila1[2]!="B" and @fila1[2]==@fila2[2] and @fila2[2]==@fila3[2]
			ganador = @fila1[2]
		end

		if @fila1[0]!="B" and @fila1[0]==@fila2[1] and @fila2[1]==@fila3[2]
			ganador = @fila1[0]
		end
		if @fila1[2]!="B" and @fila1[2]==@fila2[1] and @fila2[1]==@fila3[0]
			ganador = @fila1[2]
		end

		ganador
	end

end
