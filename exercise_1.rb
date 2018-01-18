def palindrome?(string)
  string = string.to_s.downcase.delete("^a-z&&^а-я")
  str_rev = string.reverse
  string == str_rev && !string.empty?
end 


p palindrome?("A man, a plan, a canal -- Panama")
p palindrome?("")
p palindrome?("Абба")
p palindrome? nil
