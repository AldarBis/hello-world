def palindrome?(string)
  string = string.to_s.downcase.delete("^a-z&&^а-я")
  str_rev = string.reverse
 if string == str_rev && !string.empty?
   true
 else
   false
 end
end 


palindrome?("A man, a plan, a canal -- Panama")
palindrome?("")
palindrome?("Абба")
palindrome? nil
