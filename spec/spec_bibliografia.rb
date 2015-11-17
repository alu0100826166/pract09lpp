require 'date'
require 'spec_helper'
require 'bibliografia'

describe Bibliografia do
    before :all do
        # serie1 = "Serie"
        # nombres = Array.new
        # nombres = %w{ Autor1 Autor2 }
        # isbn = { "isbn-10" => " 1937785491", "isbn-13" => " 978-1937785499" }
        # @b1 = Bibliografia::Bibliografia.new(nombres, "Titulo", serie1, "Editorial", "Numero de edicion 4", Date.new(2015,10,31), isbn) #Clase Bibliografia del MODULO Bibliografia!!!!!!!
        
        # serie2 = "Serie1"
        # nombres1 = Array.new
        # nombres1 = %w{ DaveThomas AndyHunt ChadFowler }
        # isbn1 = { "isbn-1" => " 193778", "isbn-12" => " 978-19377" }
        # @b2 = Bibliografia::Bibliografia.new(nombres1, "Titulo1", serie2, "Editorial1", "Numero de edicion 1", Date.new(2015,11, 10), isbn1)
        
        # @nodo = Bibliografia::Node.new(@b1, nil) #Clase Node
        # @lista= Bibliografia::ListaEnlazada.new(@b2)
        
        serie = "Serie1"
        autores = Array.new
        autores = %w{ Autor1 Autor2 }
        isbn = { "isbn-1" => " 193778", "isbn-12" => " 978-19377" }
        @libro = Bibliografia::Libro.new(autores, "TituloLibro", serie, "Editorial Libro", "Numero Edicion Libro", Date.new(2015, 11, 17), isbn)
    end #before each
    
#     context "#Autores" do
#         it "Debe existir uno o mas autores" do
#           @b1.autores.length.should >= 1
#         end
#     end #context
    
#     context "#Titulo" do
#         it "Debe existir un titulo" do
#           @b1.titulo.should eq("Titulo")
#         end
#     end #context
    
#     context "#Serie" do
#          it "Debe existir o no una serie" do
#           @b1.serie.should eq("Serie")
#          end
#     end #context
    
#     context "#Editorial" do
#         it "Debe existir una editorial" do
#             @b1.editorial.should eq("Editorial")
#         end
#     end
    
#     context "#Numero de edicion" do
#         it "Debe existir un numero de edicion" do
#           @b1.n_edicion.should eq("Numero de edicion 4")
#         end
#     end #context
    
#     context "#Fecha Publicacion" do
#         it "Debe existir una fecha de publicacion" do
#             @b1.fecha.strftime("%d/%m/%Y").should eq("31/10/2015")
#         end
#     end
    
#     context "#ISBN" do
#         it "Debe existir un ISBN o mas" do
#             @b1.isbn.size.should >= 1
#         end
#     end
    
#   context "#Obtener Autores" do
#         it "Debe poderse obtener los autores" do
#             @b1.getAutores.should eq( ["Autor1", "Autor2"])
#         end
#     end
    
    
#     context "#Obtener ISBN" do
#         it "Debe poderse obtener los o el ISBN" do
#             @b1.getISBN.should eq({ "isbn-10" => " 1937785491", "isbn-13" => " 978-1937785499" })
#         end
#     end
    
#     context "#Obtener salida formateada" do
#         it "Debe poderse obtener la bibliografia formateada" do
#             @b1.getReferencia
#         end
#     end
    
    
    

########################################################## PRUEBAS PRACTICA 7
    # context "#Debe existir un nodo" do
    #     it "Debe existir un nodo con un valor" do
    #         @nodo.value.should eq(@b1)
    #     end
    #     it "Debe existir un nodo con un siguiente" do
    #         @nodo.sig.should eq(nil)
    #     end
    # end
    
    # context "#Debe existir una lista enlazada" do
    #     it "Debe existir una lista" do
    #         @lista.head.value.should eq(@b2)
    #     end
        
    #     it "Debe insertar un elemento" do
    #         @lista.push(@b2)
    #     end
        
    #     it "Debe insertar un elemento" do
    #         @lista.push(@b1)
    #     end
        
    #     # it "Debe extraerse el primer elemento" do
    #     #     @lista.pop
    #     # end
        
    #     it "Debe extraer todos los elementos de la lista" do
    #         @lista.extraer
    #     end
    # end
    
########################################################PRUEBAS PRACTICA 8
    context "#Debe existir una clase libro" do
        it "Debe existir una clase libro" do
            @libro.should.should eq (@libro)
        end
    end
end
