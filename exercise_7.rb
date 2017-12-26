module Currency
  def dollar
    array = [0.74,32.26,1, self]
  end
  alias :dollars :dollar
	
  def euro
    array = [1,43.61,1.35, self]
  end
  alias :euros :euro
  
  def ruble
    array = [0.23,1,0.03, self]
  end
  alias :rubles :ruble
  
  def in(curr)
    case curr
    when :dollar, :dollars
      puts self[2]*self[3] 
    when :euro, :euros
      puts self[0]*self[3]
    when :ruble, :rubles
      puts self[1]*self[3]
    end
  end
end

class Fixnum
  include Currency
end

class Array
  include Currency
end

5.dollars.in(:euros)
10.euros.in(:rubles)
1.dollar.in(:rubles)
1.ruble.in(:euro)



