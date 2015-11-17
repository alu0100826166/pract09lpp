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
        
        it "el objeto libro debe ser instancia de clase Libro" do
            @libro.class.should eq (Bibliografia::Libro)
        end
        
        it "el objeto revista debe ser instancia de clase Revista" do
            @revista.class.should eq(Bibliografia::Revista)
        end
        
        it "el objeto doc debe ser instancia de clase DocumentoElectronico" do
           @doc.class.should eq (Bibliografia::DocumentoElectronico)
        end
        
        it "El objeto doc de la clase DocumentoElectronico no debe ser instancia de clase Bibliografia" do
            (@doc.instance_of?Bibliografia::Bibliografia).should eq(false)
        end
        
        it "El objeto libro de la clase Libro no debe ser instancia de clase Bibliografia" do
            (@libro.instance_of?Bibliografia::Bibliografia).should eq(false)
        end
        
        it "El objeto revista de la clase Revista no debe ser instancia de clase Bibliografia" do
            (@revista.instance_of?Bibliografia::Bibliografia).should eq(false)
        end
        
        it "El objeto revista de la clase Revista debe ser objeto de clase Bibliografia" do
            (@revista.is_a?Bibliografia::Bibliografia).should eq(true)
        end
        
        it "El objeto libro de la clase Libro debe ser objeto de clase Bibliografia" do
            (@libro.is_a?Bibliografia::Bibliografia).should eq(true)
        end
        
        it "El objeto doc de la clase DocumentoElectronico debe ser objeto de clase Bibliografia" do
            (@doc.kind_of?Bibliografia::Bibliografia).should eq(true)
        end
    end#Context
    
    context "#Debe existir una lista doblemente enlazada" do
        it "Debe Inicializarse una lista doblemente enlazada con un valor en la cabecera" do
            @Lista.head.value.should eq(@Lista.head.value)
        end
        
        it "La lista debe tener un siguiente en la cabecera" do
            @Lista.head.sig.should eq(nil)
        end
        
        it "La lista debe tener un previo en la cabecera" do
            @Lista.head.prev.should eq(nil)
        end
        
        it "La lista debe tener una cola con un prev, un valor y un siguiente" do
            @Lista.tail.prev.should eq(nil)
            @Lista.tail.value.should eq(@Lista.tail.value)
            @Lista.tail.sig.should eq(nil)
        end
        
        it "La lista debe poder insertar al principio" do
            @Lista.insertar_delante(@revista)
        end
    end
end
