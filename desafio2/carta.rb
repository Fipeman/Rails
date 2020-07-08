class Carta
    attr_accessor :numero, :pinta    
    def initialize(numero, pinta)
        @numero = numero
        @pinta = pinta
        if numero <1 or numero >13 
           raise ArgumentError, "ingresar valor entre 1 a 13" 
        end    
        if pinta !="C" && pinta !="D" && pinta !="E" && pinta !="T" 
            raise ArgumentError, "ingresar Corazón: C , Diamante: D, Espada: E o Trébol: T" 
        end    
    end

    def to_s
        "#{numero} | #{pinta}"
    end
end

# puts "ingresar un numero de 1 a 13"
# nv = gets.chomp.to_i

# puts "ingresar Corazón: C , Diamante: D, Espada: E o Trébol: T"
# pv = gets.chomp.upcase

# A1 = Carta.new(nv,pv)
# puts "tu combinación es #{A1}"