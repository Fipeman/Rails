require_relative 'carta'
class Baraja
  attr_accessor :cartas
  def initialize(cartas=[])
    @cartas = cartas
    pinta = ["C", "D", "E", "T"]
  13.times do |n|
    n += 1
    pinta.each do |pinta|
    cartas.push(Carta.new(n,pinta))
    end
  end
  end

  def barajar
    cartas.shuffle
  end

  def sacar
    cartas.pop
  end

  def repartir_mano
    cartas.take(5)
  end
end


mano = Baraja.new
#puts mano.barajar
#puts mano.cartas
#puts mano.sacar
#puts mano.repartir_mano