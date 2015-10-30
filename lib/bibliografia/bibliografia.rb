module Bibliografia
    
    class Bibliografia

        attr_accessor :autores, :titulo

        def initialize(autor, titulo)
            raise ArgumentError, 'Tiene que haber al menos un autor' if autor.length == 0
            @autores = Array.new
            @titulo = titulo
            autor.each do |item|
                @autores.push "#{item}"
            end #bucle each
        end #initialize

        def addAutor(nombreAutor)
            @autores.push "#{nombreAutor}"
        end #addAutor

    end #class Bibliografia
end #module Bibliografia