
class Animal
    attr_accessor :nome, :idade, :raca
end

class Cachorro <Animal
    def late
        puts @nome + ' diz: Au au...'
    end
end

class Gato <Animal
    def mia
        puts @nome + ' diz: Miau...'
    end
end

class Pato <Animal
    def grasna
        puts @nome + 'diz: Quack quack'
    end
end

spike = Cachorro.new
spike.nome = 'Spike'

snoop =  Cachorro.new
snoop.nome = 'Snoop'

tom = Gato.new
tom.nome = 'Tom'

patolino = Pato.new
patolino.nome = 'Patolino'

puts spike.late 
puts snoop.late
puts tom.mia
puts patolino.grasna