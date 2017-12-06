def combine_anagrams(words)
  result = {}
  words.each do |word|
  word.downcase!
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end


 
result.each do |k, v|
  p v
end
end

words =  ['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream']
combine_anagrams(words)