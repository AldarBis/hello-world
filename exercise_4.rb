def combine_anagrams(words)
  res_hash = {}
  res_array = []
  words.each do |word|
  word.downcase!
  key = word.split('').sort.join
  if res_hash.has_key?(key)
    res_hash[key].push(word)
  else
    res_hash[key] = [word]
  end
  end
  res_hash.each do |k, v|
  res_array.push(v)  
  end
end

words =  ['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream']
combine_anagrams(words)
