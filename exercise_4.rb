def combine_anagrams(words)
  res_hash = {}
  words.each do |word|
  word.downcase!
  key = word.split('').sort.join
  if res_hash.has_key?(key)
    res_hash[key].push(word)
  else
  
    res_hash[key] = [word]
  end
end


 res_array = []
res_hash.each do |k, v|
  res_array.push(v)
  
end
p res_array
end

words =  ['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream']
combine_anagrams(words)
