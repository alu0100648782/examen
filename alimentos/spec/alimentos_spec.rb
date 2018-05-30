#pruebas
require "spec_helper"

describe Alimentos do

  context Alimento do
    before :each do

     @a1 = Alimento.new("pan", 1.0, 1.0, 1.0)
     @a2 = Alimento.new("huevo", 2.0, 2.0, 2.0)
     @a3 = Alimento.new("carne", 3.0, 3.0, 3.0)
     @lista = [@a1, @a2, @a3]
    end

    def mi_funcion(l)
      (l.max).valor_energetico
    end


    def mi_funcion2(l)
      (l.min).valor_energetico
    end
    
    def mi_funcion3(l)
      (l.min)
    end
    
    def mi_funcion4(l)
      (l.max)
    end

    it "debe existir un nombre para el alimento" do
       expect(@a1.nombre).to be == "pan"
    end
    it "el alimento debe de tener proteina" do
       expect(@a2.proteinas).to be == 2.0
    end
    it "valor energetico del huevo" do
       expect(@a2.valor_energetico).to be == 34
    end
    it "maximo valor energetico" do
       expect(mi_funcion(@lista)).to eq  (51.0)
    end
    it "nombre del alimento con el minimo valor energetico" do
       expect(mi_funcion3(@lista)).to eq (@a1)
    end 
    
  end
end
