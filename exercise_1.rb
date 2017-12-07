def polindrome?(string)
string = string.downcase.delete("^a-z&&^а-я")
puts string
str1 = string.reverse
puts str1
if string == str1 && !string.empty?
puts "palindrome"
else
puts "Not polindrome"
end
end

require "rubygems"
require "active_support"
polindrome?("A man, a plan, a canal -- Panama")
polindrome?("")
polindrome?("Абба")
