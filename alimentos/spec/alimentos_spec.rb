#pruebas
require "spec_helper"

describe Alimentos do

  context Alimento do
    before :each do
     @a1 = Alimento.new("pan", 1.0, 1.0, 1.0)
     @a2 = Alimento.new("huevo", 2.0, 2.0, 2.0)
     @a3 = Alimento.new("carne", 3.0, 3.0, 3.0)
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
  end

  #---------------------------GRUPO-----------------------------

  context Grupo do
    before :each do
     @a1 = Alimento.new("pan", 1.0, 1.0, 1.0)
     @a2 = Alimento.new("huevo", 2.0, 2.0, 2.0)
     @migrupo1 = Grupo.new(
     "dos ingredientes",
     [@a1, @a2])
    end
    it "prueba grupo" do
       expect(@migrupo1.to_s).to eq("DOS INGREDIENTES\n-pan, 1.0, 1.0, 1.0,\n-huevo, 2.0, 2.0, 2.0")
    end
  end

#----------------------------NODO-------------------------------

  context Nodo do
    before :each do
     @a1 = Alimento.new("pan", 1.0, 1.0, 1.0)
     @a2 = Alimento.new("huevo", 2.0, 2.0, 2.0)
     @migrupo1 = Grupo.new(
     "dos ingredientes",
     [@a1, @a2])
     @nodo1=Nodo.new(@migrupo1,nil,nil)
    end

    it 'Existe valor de nodo' do
       expect(@nodo1.value).to eq(@migrupo1)
    end
  end

#-------------------------LISTA-----------------------------------
  context Lista do
    before :each do
     @a1 = Alimento.new("pan", 1.0, 1.0, 1.0)
     @a2 = Alimento.new("huevo", 2.0, 2.0, 2.0)
     @a3 = Alimento.new("carne", 3.0, 3.0, 3.0)
     @lista1 = Lista.new(nil,nil)
    end
    it "debe existir una lista con su cabeza" do
       @lista1.insertar(@a3)
       expect(@lista1.cabeza.value).to eq(@a3)
    end
  end

#------------------------LISTA ENUMERABLE------------------------

  context "prueba lista enumerable"
    before :each do
     @a1 = Alimento.new("pan", 1.0, 1.0, 1.0)
     @a2 = Alimento.new("huevo", 2.0, 2.0, 2.0)
     @a3 = Alimento.new("carne", 3.0, 3.0, 3.0)
     @lista1 = Lista.new(nil,nil)
    end
    
    it "minimo valor energetico" do
       @lista1.insertar_varios([@a1.valor_energetico,@a2.valor_energetico,@a3.valor_energetico])
       expect(@lista1.min).to eq(@a1.valor_energetico)
    end
    it "maximo valor energetico" do
       @lista1.insertar_varios([@a1.valor_energetico,@a2.valor_energetico,@a3.valor_energetico])
       expect(@lista1.max).to eq(@a3.valor_energetico)
    end
    it "minimo valor energetico con valor numeral" do
       @lista1.insertar_varios([@a1.valor_energetico,@a2.valor_energetico,@a3.valor_energetico])
       expect(@lista1.min).to be == 17.0
    end
    it "maximo valor energetico con valor numeral" do
       @lista1.insertar_varios([@a1.valor_energetico,@a2.valor_energetico,@a3.valor_energetico])
       expect(@lista1.max).to be == 51.0
    end


  end

