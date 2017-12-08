def count_words(string)
  str = string.downcase.scan(/\w+/).sort
  puts str
  hash = Hash.new(0)
  str.each { |n| hash[n] = str.count(n) }
  puts hash
end

count_words("Doo bee doo bee doo")
count_words("A man, a plan, a canal -- Panama")
