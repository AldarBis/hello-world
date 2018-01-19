
module Currency
  $h = {"$" => 32.36, "€" => 43.61}
  
  def dollar
   array = [$h["$"]/$h["€"], $h["$"], 1, self]
  end
	alias :dollars :dollar
	
  def euro
   array = [1, $h["€"], $h["€"]/$h["$"], self]
  end
    alias :euros :euro
  
  def ruble
    array = [1/$h["€"], 1, 1/$h["$"], self]
	
  end
  alias :rubles :ruble
  
  def in(curr)
    case curr
	   when :dollar, :dollars
	    puts (self[2]*self[3]).round 3
	   when :euro, :euros
	    puts (self[0]*self[3]).round 3
	   when :ruble, :rubles
	    puts (self[1]*self[3]).round 3
	  	
    end
end
end


class Integer
 include Currency
end
class Array
include Currency
end



5.dollars.in(:euros)
10.euros.in(:rubles)
1.dollar.in(:rubles)
1.ruble.in(:euro)



