
module Bibliografia
    
    class Bibliografia

        attr_accessor :autores, :titulo, :editorial, :fecha, :n_edicion, :isbn

        def initialize(autor, titulo, ed, nEd, fecha, isbn)
            raise ArgumentError, 'Tiene que haber al menos un autor' if autor.length == 0
            raise ArgumentError if ( (fecha.class != Date) ||
                                    !(Date.valid_date?(fecha.year,fecha.month, fecha.mday)))
            
            raise ArgumentError if (isbn.class != Hash)
            @autores = Array.new
            @isbn = isbn
            @titulo = titulo
            @editorial = ed
            @fecha = fecha
            @n_edicion = nEd
            autor.each do |item|
                @autores.push "#{item}"
            end #bucle each
        end #initialize

        def getAutores()
           p @autores
        end #getAutores
    
        def getISBN()
            p @isbn
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

    end #class Bibliografia
end #module Bibliografia