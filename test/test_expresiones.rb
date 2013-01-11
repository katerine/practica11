require "REEcleon"
require "test/unit"

class Expresiones < Test::Unit::TestCase

def setup
@prueba = REEcleon::Expresiones.char("Amigo")
end

def test_String
assert_equal(@prueba["Amigo"], "")
end

def test_Star
@star = REEcleon::Expresiones.star(@prueba)
assert_equal(@star["AmigoAmigo"],"")
end

def test_Concatenacion
@seq = REEcleon::Expresiones.seq(@prueba,@prueba)
assert_equal(@seq["AmigoAmigo"],"")
end

def test_Plus
@plus = REEcleon::Expresiones.plus(@prueba)
assert_equal(@plus["Amigo"],"")
assert_equal(@plus[""],false)
end


def test_epsilon
@epsilon = REEcleon::Expresiones.epsilon
assert_equal(@epsilon["Amigo"],"Amigo")
assert_equal(@epsilon[""], "")
end


def test_alt
@prueba2 = REEcleon::Expresiones.char("Enemigo")
@alt = REEcleon::Expresiones.alt(@prueba, @prueba2)
assert_equal(@alt["Amigo"],"")
assert_equal(@alt["Enemigo"], "")
assert(!@alt[""])
end

end
