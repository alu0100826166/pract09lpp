
require 'spec_helper'
require 'bibliografia'

describe Bibliografia do
    before :all do
        @b1=Bibliografia.new("NombreAutor")
    end
    context "#Autores" do
        it "Debe existir uno o mas autores" do
           @b1.autores.count.should >= 1
        end
    end
        
    
end