def count_words(string)
  str = string.downcase.scan(/\w+/)
  hash = Hash.new(0)
  str.each {|n|
next if hash.has_key?(n)
    str.each { |m|    
      if n == m
      hash[n] += 1
      end
       # puts hash
      }
    }
  puts hash
end

count_words("Doo bee doo bee doo")