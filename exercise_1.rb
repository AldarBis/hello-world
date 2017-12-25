def polindrome?(string)
  string = string.downcase.delete("^a-z&&^а-я")
  str_rev = string.reverse
 if string == str_rev && !string.empty?
  puts "Polindrome"
 else
  puts "No polindrome"
 end
end

polindrome?("A man, a plan, a canal -- Panama")
polindrome?("")
polindrome?("Абба")
