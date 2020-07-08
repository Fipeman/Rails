require_relative "cuenta_bancaria"
class Usuario
  attr_accessor :nombre, :cuentas 
  def initialize(nombre,cuentas=[])
    @nombre = nombre
    @cuentas = cuentas
  end
  def saldo_total
    puts cuentas.map { |cuenta| cuenta.saldo }.sum
end
end

saldos_cuentas=[]
5.times do
  saldo_cuentas.push(CuentaBancaria.new(["banco1","banco2","banco3","banco4","banco5"].sample,Random.rand(1..5),Random.rand(1000..10000)))
end

cliente1 = Usuario.new("Juanito",saldos_cuentas)
cliente1.saldo_total





     