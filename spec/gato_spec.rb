require_relative "../lib/gato.rb"

describe "Gato" do

	it "Si marco por primera vez, debe existir una X" do
		gato = Gato.new
		gato.marcarPosicion(1,1)
		gato.consultarPosicion(1,1).should == "X"
	end

	it "Si marco por segunda vez, debe existir una X y una O" do
		gato = Gato.new
		gato.marcarPosicion(1,2)
		gato.marcarPosicion(2,2)
		resultado = "#{ gato.consultarPosicion(1,2) }#{ gato.consultarPosicion(2,2)}"
		resultado.should == "XO"
	end

	it "Si marco por tercera vez, debe existir dos X y una O" do
		gato = Gato.new
		resultado = ""
		gato.marcarPosicion(0,0)
		resultado = "#{ resultado }#{ gato.consultarPosicion(0,0) }"
		gato.marcarPosicion(0,1)
		resultado = "#{ resultado }#{ gato.consultarPosicion(0,1) }"
		gato.marcarPosicion(0,2)
		resultado = "#{ resultado }#{ gato.consultarPosicion(0,2) }"
		resultado.should == "XOX"
	end

	it "Si marco por cuarta vez, debe existir dos X y dos O" do
		gato = Gato.new
		resultado = ""
		gato.marcarPosicion(0,0)
		resultado = "#{ resultado }#{ gato.consultarPosicion(0,0) }"
		gato.marcarPosicion(0,1)
		resultado = "#{ resultado }#{ gato.consultarPosicion(0,1) }"
		gato.marcarPosicion(0,2)
		resultado = "#{ resultado }#{ gato.consultarPosicion(0,2) }"
		gato.marcarPosicion(1,0)
		resultado = "#{ resultado }#{ gato.consultarPosicion(1,0) }"
		resultado.should == "XOXO"
	end

	it "Si marco por quinta vez, debe existir tres X y dos O" do
		gato = Gato.new
		resultado = ""
		gato.marcarPosicion(0,0)
		resultado = "#{ resultado }#{ gato.consultarPosicion(0,0) }"
		gato.marcarPosicion(0,1)
		resultado = "#{ resultado }#{ gato.consultarPosicion(0,1) }"
		gato.marcarPosicion(0,2)
		resultado = "#{ resultado }#{ gato.consultarPosicion(0,2) }"
		gato.marcarPosicion(1,0)
		resultado = "#{ resultado }#{ gato.consultarPosicion(1,0) }"
		gato.marcarPosicion(1,1)
		resultado = "#{ resultado }#{ gato.consultarPosicion(1,1) }"
		resultado.should == "XOXOX"
	end


	it "Si marco por sexta vez, debe existir tres X y tres O" do
		gato = Gato.new
		resultado = ""
		gato.marcarPosicion(0,0)
		resultado = "#{ resultado }#{ gato.consultarPosicion(0,0) }"
		gato.marcarPosicion(0,1)
		resultado = "#{ resultado }#{ gato.consultarPosicion(0,1) }"
		gato.marcarPosicion(0,2)
		resultado = "#{ resultado }#{ gato.consultarPosicion(0,2) }"
		gato.marcarPosicion(1,0)
		resultado = "#{ resultado }#{ gato.consultarPosicion(1,0) }"
		gato.marcarPosicion(1,1)
		resultado = "#{ resultado }#{ gato.consultarPosicion(1,1) }"
		gato.marcarPosicion(1,2)
		resultado = "#{ resultado }#{ gato.consultarPosicion(1,2) }"
		resultado.should == "XOXOXO"
	end

	
	it "Si marco por septima vez, debe existir cuatro X y tres O" do
		gato = Gato.new
		resultado = ""
		gato.marcarPosicion(0,0)
		resultado = "#{ resultado }#{ gato.consultarPosicion(0,0) }"
		gato.marcarPosicion(0,1)
		resultado = "#{ resultado }#{ gato.consultarPosicion(0,1) }"
		gato.marcarPosicion(0,2)
		resultado = "#{ resultado }#{ gato.consultarPosicion(0,2) }"
		gato.marcarPosicion(1,0)
		resultado = "#{ resultado }#{ gato.consultarPosicion(1,0) }"
		gato.marcarPosicion(1,1)
		resultado = "#{ resultado }#{ gato.consultarPosicion(1,1) }"
		gato.marcarPosicion(1,2)
		resultado = "#{ resultado }#{ gato.consultarPosicion(1,2) }"
		gato.marcarPosicion(2,0)
		resultado = "#{ resultado }#{ gato.consultarPosicion(2,0) }"
		resultado.should == "XOXOXOX"
	end



	it "Si marco por octava vez, debe existir cuatro X y cuatro O" do
		gato = Gato.new
		resultado = ""
		gato.marcarPosicion(0,0)
		resultado = "#{ resultado }#{ gato.consultarPosicion(0,0) }"
		gato.marcarPosicion(0,1)
		resultado = "#{ resultado }#{ gato.consultarPosicion(0,1) }"
		gato.marcarPosicion(0,2)
		resultado = "#{ resultado }#{ gato.consultarPosicion(0,2) }"
		gato.marcarPosicion(1,0)
		resultado = "#{ resultado }#{ gato.consultarPosicion(1,0) }"
		gato.marcarPosicion(1,1)
		resultado = "#{ resultado }#{ gato.consultarPosicion(1,1) }"
		gato.marcarPosicion(1,2)
		resultado = "#{ resultado }#{ gato.consultarPosicion(1,2) }"
		gato.marcarPosicion(2,0)
		resultado = "#{ resultado }#{ gato.consultarPosicion(2,0) }"
		gato.marcarPosicion(2,1)
		resultado = "#{ resultado }#{ gato.consultarPosicion(2,1) }"
		resultado.should == "XOXOXOXO"
	end


		it "Si marco por novena vez, debe existir cinco X y cuatro O" do
		gato = Gato.new
		resultado = ""
		gato.marcarPosicion(0,0)
		resultado = "#{ resultado }#{ gato.consultarPosicion(0,0) }"
		gato.marcarPosicion(0,1)
		resultado = "#{ resultado }#{ gato.consultarPosicion(0,1) }"
		gato.marcarPosicion(0,2)
		resultado = "#{ resultado }#{ gato.consultarPosicion(0,2) }"
		gato.marcarPosicion(1,0)
		resultado = "#{ resultado }#{ gato.consultarPosicion(1,0) }"
		gato.marcarPosicion(1,1)
		resultado = "#{ resultado }#{ gato.consultarPosicion(1,1) }"
		gato.marcarPosicion(1,2)
		resultado = "#{ resultado }#{ gato.consultarPosicion(1,2) }"
		gato.marcarPosicion(2,0)
		resultado = "#{ resultado }#{ gato.consultarPosicion(2,0) }"
		gato.marcarPosicion(2,1)
		resultado = "#{ resultado }#{ gato.consultarPosicion(2,1) }"
		gato.marcarPosicion(2,2)
		resultado = "#{ resultado }#{ gato.consultarPosicion(2,2) }"
		resultado.should == "XOXOXOXOX"
	end

	it "Sin marca y se consulta una posicion" do
		gato = Gato.new
		gato.consultarPosicion(1,1).should == "p11"
	end

end
