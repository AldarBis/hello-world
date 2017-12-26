class String 
  def palindrome? 
    str = self.downcase.delete("^a-z&&^а-я") 
    str_rev = str.reverse 
    if str == str_rev && !str.empty? 
      puts "palindrome" 
    else 
      puts "No palindrome" 
    end 
  end 
end 

module Enumerable 
  def palindrome? 
    str = self 
    str_rev = str.reverse 
    if str == str_rev && !str.empty? 
      puts "palindrome" 
    else 
      puts "No palindrome" 
    end 
  end 
end 

"foo".palindrome? 
[1,2,3,2,1].palindrome?
