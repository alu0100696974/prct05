# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase

       
 def test_suma
        assert_equal("37/660", Fraccion.new(2,88).+(Fraccion.new(2,60)))
        end

        def test_resta
                assert_equal("-7/660", Fraccion.new(2,88).-(Fraccion.new(2,60)))
        end

        def test_mult
                assert_equal("1/1320", Fraccion.new(2,88).*(Fraccion.new(2,60)))
        end
        
        def test_div
                assert_equal("15/22", Fraccion.new(2,88)./(Fraccion.new(2,60)))
        end

        def test_failure
                assert_equal("7,3", Fraccion.new(2,88).+(Fraccion.new(2,60)).to_s )
        end
        

end
