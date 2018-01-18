def combine_anagrams(words)
  res_hash = words.group_by { |word|
      key = word.split('').sort.join
  }
  res_hash.values
end

words =  ['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream']
combine_anagrams(words)
