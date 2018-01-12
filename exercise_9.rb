module Palindrome
  def palindrome?
    string = self.to_s.downcase.delete("^a-z&&^а-я^1-9")
    str_rev = string.reverse
    if string == str_rev && !string.empty?
      true
    else
      false
    end
  end 
end

module Enumerable
  include Palindrome
end

class Array
  include Enumerable
end
  
class String 
  include Enumerable
end 

class NilClass
  include Enumerable
end



p nil.palindrome? 
p "Abba".palindrome?
p "Foo".palindrome? 
p [1,2,3,2,1].palindrome?
p [1,2,3,3,3].palindrome?
