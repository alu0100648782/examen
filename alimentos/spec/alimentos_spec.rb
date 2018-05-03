#pruebas
require "spec_helper"

describe Alimentos do

  context Alimento do
    before :each do
     @a1 = Alimento.new("pan")
     @a2 = Alimento.new("huevo")
     @a2 = Alimento.new("carne")
    end
    it "debe existir un nombre para el alimento" do
       expect(@a1.nombre).to be == "pan"
    end
  end
end
