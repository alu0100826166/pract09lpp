require 'date'
require 'spec_helper'
require 'bibliografia'


describe Bibliografia do
    before :each do
        serie = "Serie1"
        autores = Array.new
        autores = %w{ Autor1 Autor2 }
        isbn = { "isbn-1" => " 193778", "isbn-12" => " 978-19377" }
        @libro = Bibliografia::Libro.new(autores, "TituloLibro", serie, "Editorial Libro", "Numero Edicion Libro", Date.new(2015, 11, 17), isbn)
        
        
        serie2 = "Serie2"
        autores = Array.new
        autores = %w{ Autor1 Autor2 }
        issn = "1133-9721"
        @revista = Bibliografia::Revista.new(autores, "TituloRevista", serie2, "Editorial Revista", "Numero Edicion Revista", Date.new(2015, 11, 17), issn)
        
        
        autores = Array.new
        autores = %w{ Autor1 Autor2 }
        url = "www.libroelectronico.com"
        @doc = Bibliografia::DocumentoElectronico.new(autores, "TituloDoc", Date.new(2015, 11, 17), url)
        
        
        @Node = Struct.new(:prev, :value, :sig)
        @Lista = Bibliografia::ListaEnlazada.new(@libro)
    end #before each

########################################################PRUEBAS PRACTICA 9
    context "Debe haber un modulo comparable" do
        it "Comparacion de dos libros" do
            serie = "Serie1"
            autores = Array.new
            autores = %w{ Autor1 Autor2 }
            isbn = { "isbn-1" => " 193778", "isbn-12" => " 978-19377" }
            @libro = Bibliografia::Libro.new(autores, "ATituloLibro", serie, "Editorial Libro", "Numero Edicion Libro", Date.new(2015, 11, 17), isbn)
            
            
            serie2 = "Serie2"
            autores2 = Array.new
            autores2 = %w{ Autor3 Autor4 }
            isbn2 = { "isbn-14" => " 193778", "isbn-10" => " 978-19377" }
            @libro2 = Bibliografia::Libro.new(autores2, "TituloLibro2", serie2, "Editorial Libro2", "Numero Edicion Libro 2", Date.new(2015, 11, 17), isbn2)
            
            expect(@libro <=> @libro2).to eq(-1)
        end
        
        it "Comparacion de dos libros" do
            serie = "Serie1"
            autores = Array.new
            autores = %w{ Autor1 Autor2 }
            isbn = { "isbn-1" => " 193778", "isbn-12" => " 978-19377" }
            @libro = Bibliografia::Libro.new(autores, "ATituloLibro", serie, "Editorial Libro", "Numero Edicion Libro", Date.new(2015, 11, 17), isbn)
            
            
            serie2 = "Serie2"
            autores2 = Array.new
            autores2 = %w{ Autor3 Autor4 }
            isbn2 = { "isbn-14" => " 193778", "isbn-10" => " 978-19377" }
            @libro2 = Bibliografia::Libro.new(autores2, "TituloLibro2", serie2, "Editorial Libro2", "Numero Edicion Libro 2", Date.new(2015, 11, 17), isbn2)
            
            expect(@libro < @libro2).to eq(true)
        end
        
        it "Comparacion de dos libros" do
            serie = "Serie1"
            autores = Array.new
            autores = %w{ Autor1 Autor2 }
            isbn = { "isbn-1" => " 193778", "isbn-12" => " 978-19377" }
            @libro = Bibliografia::Libro.new(autores, "ATituloLibro", serie, "Editorial Libro", "Numero Edicion Libro", Date.new(2015, 11, 17), isbn)
            
            
            serie2 = "Serie2"
            autores2 = Array.new
            autores2 = %w{ Autor3 Autor4 }
            isbn2 = { "isbn-14" => " 193778", "isbn-10" => " 978-19377" }
            @libro2 = Bibliografia::Libro.new(autores2, "TituloLibro2", serie2, "Editorial Libro2", "Numero Edicion Libro 2", Date.new(2015, 11, 17), isbn2)
            
            expect(@libro > @libro2).to eq(false)
        end
    end
    
    context "Debe haber un modulo enumerable para clase lista" do
        it "Debe sacarse el minimo" do
            series = "Serie1"
            autores22 = Array.new
            autores22 = %w{ Autor1 Autor2 }
            isbns = { "isbn-1" => " 193778", "isbn-12" => " 978-19377" }
            @lib = Bibliografia::Libro.new(autores22, "TituloLibro", series, "Editorial Libro", "Numero Edicion Libro", Date.new(2015, 11, 17), isbns)
                
            serie2s = "Serie2"
            autores11 = Array.new
            autores11 = %w{ Autor1 Autor2 }
            issns = "1133-9721"
            @rev = Bibliografia::Revista.new(autores11, "TituloRevista", serie2s, "Editorial Revista", "Numero Edicion Revista", Date.new(2015, 11, 17), issns)
                
            autores33 = Array.new
            autores33 = %w{ Autor1 Autor2 }
            urls = "www.libroelectronico.com"
            @docu = Bibliografia::DocumentoElectronico.new(autores33, "TituloDoc", Date.new(2015, 11, 17), urls)
            
            @list=Bibliografia::ListaEnlazada.new(@lib)
            @list.insertar_delante(@rev)
            @list.insertar_detras(@docu)
            
            @list.min
       
        end
    end


end
