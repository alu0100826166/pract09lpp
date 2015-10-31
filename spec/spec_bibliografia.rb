require 'date'
require 'spec_helper'
require 'bibliografia'

describe Bibliografia do
    before :each do
        nombres = Array.new
        nombres = %w{ Autor1 Autor2 }
        isbn = { "isbn-10" => " 1937785491", "isbn-13" => " 978-1937785499" }
        @b1 = Bibliografia::Bibliografia.new(nombres, "Titulo", "Editorial", "Numero de edicion 4", Date.new(2015,10,31), isbn) #Clase Bibliografia del MODULO Bibliografia!!!!!!!
        #@b2 = Bibliografia::Bibliografia.new(nombres, "Titulo")
    end #before each
    
    context "#Autores" do
        it "Debe existir uno o mas autores" do
          @b1.autores.length.should >= 1
        end
    end #context
    
    context "#Titulo" do
        it "Debe existir un titulo" do
          @b1.titulo.should eq("Titulo")
        end
    end #context
    
    # context "#Serie" do
    #     it "Debe existir o no una serie" do
    #       expect(defined? @b1.serie).to eq(serie)
    #       expect(defined? @b2.serie).to eq(false)
    #     end
    # end #context
    
    context "#Editorial" do
        it "Debe existir una editorial" do
            @b1.editorial.should eq("Editorial")
        end
    end
    
    context "#Numero de edicion" do
        it "Debe existir un numero de edicion" do
          @b1.n_edicion.should eq("Numero de edicion 4")
        end
    end #context
    
    context "#Fecha Publicacion" do
        it "Debe existir una fecha de publicacion" do
            @b1.fecha.strftime("%d/%m/%Y").should eq("31/10/2015")
        end
    end
    
    context "#ISBN" do
        it "Debe existir un ISBN o mas" do
            @b1.isbn.size.should >= 1
        end
    end
    
    context "#Obtener Autores" do
        it "Debe poderse obtener los autores" do
            @b1.getAutores.should eq( ["Autor1", "Autor2"])
        end
    end
    
    
    context "#Obtener ISBN" do
        it "Debe poderse obtener los o el ISBN" do
            @b1.getISBN.should eq({ "isbn-10" => " 1937785491", "isbn-13" => " 978-1937785499" })
        end
    end

            
    
end #describe