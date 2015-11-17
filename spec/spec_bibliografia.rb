require 'date'
require 'spec_helper'
require 'bibliografia'

describe Bibliografia do
    before :all do
        serie = "Serie1"
        autores = Array.new
        autores = %w{ Autor1 Autor2 }
        isbn = { "isbn-1" => " 193778", "isbn-12" => " 978-19377" }
        @libro = Bibliografia::Libro.new(autores, "TituloLibro", serie, "Editorial Libro", "Numero Edicion Libro", Date.new(2015, 11, 17), isbn)
        
        
        serie = "Serie2"
        autores = Array.new
        autores = %w{ Autor1 Autor2 }
        issn = "1133-9721"
        @revista = Bibliografia::Revista.new(autores, "TituloRevista", serie, "Editorial Revista", "Numero Edicion Revista", Date.new(2015, 11, 17), issn)
        
        serie = "Serie3"
        autores = Array.new
        autores = %w{ Autor1 Autor2 }
        url = "www.libroelectronico.com"
        @doc = Bibliografia::DocumentoElectronico.new(autores, "TituloDoc", serie, "Editorial Doc", "Numero Edicion Doc", Date.new(2015, 11, 17), url)
    end #before each

########################################################PRUEBAS PRACTICA 8
    context "#Debe existir una clase libro" do
        it "Debe existir una clase libro" do
            @libro.should eq (@libro)
        end
        
        it "Debe existir una clase revista" do
            @revista.should eq (@revista)
        end
        
        it "Debe existir una clase documento electronico" do
            @doc.should eq (@doc)
        end
    end
end
