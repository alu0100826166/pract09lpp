
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
           p autores
        end #addAutor

    end #class Bibliografia
end #module Bibliografia