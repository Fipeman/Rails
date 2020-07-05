class CuentaBancaria
    attr_accessor :nombre_cliente , :numero_cuenta, :vip
    def initialize(nombre_cliente, numero_cuenta, vip = 0)
        @nombre_cliente = nombre_cliente
        @numero_cuenta = numero_cuenta
        if numero_cuenta.digits.count != 8
            raise RangeError,"La cantidad de digitos es distinta a 8"
        end
        @vip = vip
    end    
    
    def numero_de_cuenta
        if vip != 0 
            puts "1-#{numero_cuenta}"
        else
            puts "0-#{numero_cuenta}"
        end    
    end
end

cuenta_cliente = CuentaBancaria.new(["Juanito","Pepita"].sample,Random.rand(8888..99999999),Random.rand(0..1))
puts cuenta_cliente.nombre_cliente
puts cuenta_cliente.numero_de_cuenta