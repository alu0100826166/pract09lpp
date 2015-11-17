require 'date'
module Bibliografia
    
    class Bibliografia

        attr_accessor :autores, :titulo, :fecha

        def initialize(autor, titulo, fecha)
            raise ArgumentError, 'Tiene que haber al menos un autor' if autor.length == 0
            raise ArgumentError if ( (fecha.class != Date) ||
                                    !(Date.valid_date?(fecha.year,fecha.month, fecha.mday)))
            @autores = Array.new
            @titulo = titulo
            @fecha = fecha
            
            autor.each do |item|
                @autores.push "#{item}"
            end #bucle each
            
        end #initialize

        def getAutores()
           p @autores
        end #getAutores
    end #class Bibliografia
    
    class Libro < Bibliografia
        attr_accessor :ISBN, :serie, :editorial, :n_edicion
        def initialize(autor, titulo, serie, ed, nEd, fecha, isbn)
            super(autor, titulo, fecha)
            raise ArgumentError if (isbn.class != Hash)
            @ISBN=isbn
            @editorial = ed
            @n_edicion = nEd
            @serie = serie
        end
        
        def getISBN()
            p @ISBN
        end #getISBN
        
        def getReferencia()
            #Imprimimos los nombres formateados
            @autores.each_with_index do |nombre, i|
                print(nombre)
                if (i == (@autores.length-1))
                    puts #Imprimimos el salto de linea
                else
                    print(", ") #Imprimimos la coma
                end #if
            end #do
            puts ("#{@titulo}") #Imprimimos el titulo
            puts ("#{@editorial}")
            puts ("#{@n_edicion}")
            puts @fecha.strftime("%d/%m/%Y")
            #Imprimimos los valores del Hash ISBN
            isbn.each { |i, valor|
            puts ("#{i} : #{valor}") } 
        
        end #getReferencia
    end#Clase Libro
    
    class Revista < Bibliografia
        attr_accessor :ISSN
        def initialize(autor, titulo, serie, ed, nEd, fecha, issn)
            super(autor, titulo, fecha)
            @ISSN=issn
            @editorial = ed
            @n_edicion = nEd
            @serie = serie
        end
        
        def getISSN()
            p @ISSN
        end #getISSN
        
        def getReferencia()
            #Imprimimos los nombres formateados
            @autores.each_with_index do |nombre, i|
                print(nombre)
                if (i == (@autores.length-1))
                    puts #Imprimimos el salto de linea
                else
                    print(", ") #Imprimimos la coma
                end #if
            end #do
            puts ("#{@titulo}") #Imprimimos el titulo
            puts ("#{@editorial}")
            puts ("#{@n_edicion}")
            puts @fecha.strftime("%d/%m/%Y")
            puts ("#{@ISSN}")
        end #getReferencia
    end#Clase Revista
    
    
    class DocumentoElectronico < Bibliografia
        attr_accessor :URL
        def initialize(autor, titulo, fecha, url)
            super(autor, titulo, fecha)
            @URL=url
        end
        
        def getURL()
            p @URL
        end #getURL
        
        def getReferencia()
            #Imprimimos los nombres formateados
            @autores.each_with_index do |nombre, i|
                print(nombre)
                if (i == (@autores.length-1))
                    puts #Imprimimos el salto de linea
                else
                    print(", ") #Imprimimos la coma
                end #if
            end #do
            puts ("#{@titulo}") #Imprimimos el titulo
            puts @fecha.strftime("%d/%m/%Y")
            puts ("#{@URL}")
        end #getReferencia
    end#Clase DocuemntoElectronico
    
    
    Node = Struct.new(:prev, :value, :sig)
    
    
    class ListaEnlazada
        attr_accessor :head, :tail
    
        def initialize(valor)
            @head = Node.new(nil, valor, nil)
            @tail = @head
        end
        
        def pop()
            @head.value.getReferencia()
            @aux = Node.new(@head.value, @head.sig)
            @head = @aux.sig
        end
        
        def push(valor)
            @aux = Node.new(valor, @head)
            @head = @aux
        end
        
        def extraer
            @aux = @head
            while (@aux.sig != nil) do
                @head.value.getReferencia()
                @aux = @head
                @head = @aux.sig
            end
        end
    end
    
    
end #module Bibliografia