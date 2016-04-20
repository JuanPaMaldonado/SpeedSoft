class Gato
	def initialize
		@fila1 = ["p00","p01","p02"]
		@fila2 = ["p10","p11","p12"]
		@fila3 = ["p20","p21","p22"]
		@marca = "X"
	end

	def marcarPosicion x,y

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
		if @fila1[0]==@fila1[1] and @fila1[1]==@fila1[2]
			ganador = @fila1[0]
		end
		if @fila2[0]==@fila2[1] and @fila2[1]==@fila2[2]
			ganador = @fila2[0]
		end
		if @fila3[0]==@fila3[1] and @fila3[1]==@fila3[2]
			ganador = @fila3[0]
		end

		if @fila1[0]==@fila2[0] and @fila2[0]==@fila3[0]
			ganador = @fila1[0]
		end
		if @fila1[1]==@fila2[1] and @fila2[1]==@fila3[1]
			ganador = @fila1[1]
		end
		if @fila1[2]==@fila2[2] and @fila2[2]==@fila3[2]
			ganador = @fila1[2]
		end

		if @fila1[0]==@fila2[1] and @fila2[1]==@fila3[2]
			ganador = @fila1[0]
		end
		if @fila1[2]==@fila2[1] and @fila2[1]==@fila3[0]
			ganador = @fila1[2]
		end

		ganador
	end

end
