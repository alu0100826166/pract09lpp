
require 'spec_helper'
require 'bibliografia'

describe Bibliografia do
    before :each do
        nombres = Array.new
        nombres = %w{ Autor1 Autor2 }
        @b1 = Bibliografia::Bibliografia.new(nombres, "Titulo") #Clase Bibliografia del MODULO Bibliografia!!!!!!!
    end #before each
    context "#Autores" do
        it "Debe existir uno o mas autores" do
          @b1.autores.length.should >= 1
        end
    end #context
    context "#Titulo" do
        it "Debe existir un titulo" do
          expect(@b1.titulo == nil).to eq(false)
        end
    end #context
        
    
end #describe