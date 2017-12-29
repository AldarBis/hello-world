module Pal
  def palindrome?
    string = self.to_s.downcase.delete("^a-z&&^а-я")
    str_rev = string.reverse
    if string == str_rev && !string.empty?
      true
    else
      false
    end
  end
  
end


class String 
  include Pal
end 

module Enumerable
  include Pal
end
 
p Enumerable.instance_methods
p Enumerable.method_defined? :palindrome?
p "Foo".palindrome? 
p [1,2,3,2,1].palindrome?
