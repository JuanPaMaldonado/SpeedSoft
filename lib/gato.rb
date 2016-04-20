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
end
