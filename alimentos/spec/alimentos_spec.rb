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
    it "el alimento debe de tener una cantidad de glucidos" do
       expect(@a3.glucidos).to be == 3.0
    end
    it "el alimento debe contener grasas" do
       expect(@a1.lipidos).to be == 1.0
    end
  end
end
