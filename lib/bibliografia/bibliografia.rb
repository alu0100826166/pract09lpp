module Bibliografia
    
    class Bibliografia

        attr_accessor :autores

        def initialize(autor)
            @autores = Array.new ["#{autor}"]
        end #initialize

        def addAutor(nombreAutor)
            @autores.push "#{nombreAutor}"
        end #addAutor

    end #class Bibliografia
end #module Bibliografia