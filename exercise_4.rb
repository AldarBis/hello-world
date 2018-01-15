


def combine_anagrams(words)
  res_hash = words.group_by { |word|
      key = word.split('').sort.join
  }
  res_array = []
  res_hash.each do |k, v|
  res_array.push(v)  
  end
end

words =  ['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream']
combine_anagrams(words)
