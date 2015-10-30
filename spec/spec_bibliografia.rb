require 'lib/bibliografia.rb'

describe Bibliografia do
    before :each do
        @b1=Bibliografia.new('Dave Thomas')
    end
    context "#Autores" do
        it "Debe existir uno o mas autores" do
            @b1.autores.count.should >= 1
        end
    end
        
    
end