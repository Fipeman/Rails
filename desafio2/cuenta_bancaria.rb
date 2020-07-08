class CuentaBancaria
  attr_accessor :banco, :numero_cuenta, :saldo
  def initialize (banco, numero_cuenta, saldo = 0)
    @banco = banco
    @numero_cuenta = numero_cuenta
    @saldo = saldo
  end

  def transferir(monto, cuenta_banco)
    self.saldo -= monto
    cuenta_banco.saldo = cuenta_banco.saldo + monto
    puts "#{cuenta_banco.saldo}"
  end
end

cuenta1 = CuentaBancaria.new("banco1",12345, 5000)
cuenta2 = CuentaBancaria.new("banco2",54321, 5000)

cuenta1.transferir(5000,cuenta2)
