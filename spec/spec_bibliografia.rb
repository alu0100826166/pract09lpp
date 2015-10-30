
require 'spec_helper'
require 'bibliografia'

describe Bibliografia do
    before :each do
        @b1 = Bibliografia::Bibliografia.new("Nombre Autor", "Titulo") #Clase Bibliografia del MODULO Bibliografia!!!!!!!
    end #before each
    context "#Autores" do
        it "Debe existir uno o mas autores" do
          @b1.autores.count.should >= 1
        end
    end #context
    context "#Titulo" do
        it "Debe existir un titulo" do
          @b1.titulo.count.should >= 1
        end
    end #context
        
    
end #describe