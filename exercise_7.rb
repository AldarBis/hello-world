class Fixnum
 def dollar
    trans = {
	:dollar => self
	}
	end
  def euro
    trans = {
	:euro => self
	}
  end
  def ruble
    trans = {
	:ruble => self
	}
  end
  
end

class Hash
  def in(h)
  if self.keys[0] == :dollar
    case h
       when :dollar
         puts "#{self.values[0]} #{h.to_s}"
   
       when :ruble
         puts "#{self.values[0]*32.26} #{h.to_s}"
	 
	   when :euro
	     puts "#{self.values[0]*1.35} #{h.to_s}"
	   
	end
	end
	if self.keys[0] == :euro
	case h
       when :dollar
         puts "#{self.values[0]*1.35} #{h.to_s}"
   
       when :ruble
         puts "#{self.values[0]*43.61} #{h.to_s}"
	 
	   when :euro
	     puts "#{self.values[0]} #{h.to_s}"
		 end
		 end
		 if self.keys[0] == :ruble
	case h
       when :dollar
         puts "#{self.values[0]*0.3} #{h.to_s}"
   
       when :ruble
         puts "#{self.values[0]} #{h.to_s}"
	 
	   when :euro
	     puts "#{self.values[0]*0.23} #{h.to_s}"
		 end
		 end
   end
  end

1.dollar.in(:dollar)
1.dollar.in(:ruble)
1.dollar.in(:euro)
1.euro.in(:euro)
1.euro.in(:dollar)
1.euro.in(:ruble)
2.ruble.in(:dollar)
2.rubles.in(:euro)
2.ruble.in(:ruble)



