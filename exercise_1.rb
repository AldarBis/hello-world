def palindrome?(str)
str1 = str.downcase.delete("^a-z")
str1.split(//)
str2 = str1.reverse
str2.split(//)
i = 0
check = true
str1.split(//).each { |n| check = false if n != str2.split(//)[i]
  i += 1
    }
if check
puts "It's definitely palindrome"
  else
  puts "Upps, not palindrome"
end
end

palindrome?("A man, a plan, a canal -- Panama")
palindrome?("Madam, I'm Adam!")
palindrome?("Abracadabra")