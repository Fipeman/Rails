class Carta
    attr_accessor :numero, :pinta    
    def initialize(numero, pinta)
        @numero = numero
        @pinta = pinta
    end
    def to_s
        "#{numero} | #{pinta}"
    end    
end


cartas = []
5.times do
cartas.push(Carta.new(Random.rand(1..13),["C","D","E","T"].sample))
end

puts cartas
puts cartas.class