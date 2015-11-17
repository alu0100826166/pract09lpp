
module Bibliografia
    
    class Bibliografia

        attr_accessor :autores, :titulo, :serie, :editorial, :fecha, :n_edicion

        def initialize(autor, titulo, serie, ed, nEd, fecha)
            raise ArgumentError, 'Tiene que haber al menos un autor' if autor.length == 0
            raise ArgumentError if ( (fecha.class != Date) ||
                                    !(Date.valid_date?(fecha.year,fecha.month, fecha.mday)))
            
            
            @autores = Array.new
            @titulo = titulo
            @editorial = ed
            @fecha = fecha
            @n_edicion = nEd
            
            autor.each do |item|
                @autores.push "#{item}"
            end #bucle each
            
            @serie = serie
        end #initialize

        def getAutores()
           p @autores
        end #getAutores
    
       

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

    end #class Bibliografia
    
    class Libro < Bibliografia
        attr_accessor :ISBN, :serie
        def initialize(autor, titulo, serie, ed, nEd, fecha, isbn)
            super(autor, titulo, serie, ed, nEd, fecha)
            raise ArgumentError if (isbn.class != Hash)
            @ISBN=isbn
        end
        
         def getISBN()
            p @ISBN
        end #getISBN
    end
    
    
    
    
    
    Node = Struct.new(:value, :sig)
    
    
    class ListaEnlazada
        attr_accessor :head
        
        def initialize(valor)
            @head = Node.new(valor, nil) 
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