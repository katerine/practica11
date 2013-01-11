require "REEcleon"

describe REEcleon::Expresiones do
  before :all do
@prueba = REEcleon::Expresiones.char("Amigo")
  end


  it "ExpresiC3n regular a partir de un string" do
      @prueba["Amigo"].should == ""
  end

  it "Expresion regular star *:0 o mas repeticiones de una cadena" do
@star = REEcleon::Expresiones.star(@prueba)
@star["AmigoAmigo"].should == ""
  end

  it "Expresion regular concatenacion" do
@seq = REEcleon::Expresiones.seq(@prueba,@prueba)
@seq["AmigoAmigo"].should == ""
  end

  it "Expresion regular plus +:1 o mas repeticiones de una cadena" do
@plus = REEcleon::Expresiones.plus(@prueba)
@plus["Amigo"].should == ""
@plus[""].should == false
  end

  it "Cadena vacia" do
@epsilon = REEcleon::Expresiones.epsilon
@epsilon["Amigo"].should == "Amigo"
@epsilon[""].should == ""
  end

  it "Expresion regular con |" do
@prueba2 = REEcleon::Expresiones.char("Enemigo")
@alt = 	REEcleon::Expresiones.alt(@prueba, @prueba2)
@alt["Amigo"].should == ""
@alt["Enemigo"].should == ""
@alt[""].should == false
  end
end
