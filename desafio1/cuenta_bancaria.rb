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
    
    def cuenta_numero
        if vip != 0 
            puts "1-#{numero_cuenta}"
        else
            puts "0-#{numero_cuenta}"
        end    
    end
end

cuenta_cliente = CuentaBancaria.new("Juanito",87654321,999)
puts cuenta_cliente.nombre_cliente
puts cuenta_cliente.cuenta_numero