require "./gcd.rb"

class Fraccion
        attr_accessor :num, :den
        def initialize(num, den)
        @num, @den = num, den
	end         

        def to_s
                "#{@num/gcd(@num, @den)}/#{@den/gcd(@num, @den)}"
        end


        

        
        def abs
                if @num > 0
                        num = @num
                else
                        num = -@num
                end
                if @den > 0
                        den = @den
                else
                        den = -@den
                end
   
        end
        

        def +(other)

        Fraccion.new(((@num * other.den) + (other.num * @den)), (@den * other.den)).to_s

        end
        
        def -(other)

        Fraccion.new(((@num * other.den) - (other.num * @den)) , (@den * other.den)).to_s

        end
        
        def *(other)

        Fraccion.new(@num * other.num, @den * other.den).to_s

        end
        
        def /(other)

        Fraccion.new(@num * other.den, @den * other.num).to_s

        end
        

end

p1= Fraccion.new(2,88)
p2=Fraccion.new(2,60)

puts "Fraccion Minima 1"
puts p1.to_s
puts "Fraccion Minima 2"
puts p2.to_s
puts "La Suma: "
puts p1 + p2
puts "La Resta: "
puts p1 - p2
puts "La Multiplicacion: "
puts p1 * p2
puts "La Division: "
puts p1 / p2

