def is_anagram(str1, str2)
  return false unless str1.size == str2.size
  count_of_string1 = hashify_string(str1)
  count_of_string2 = hashify_string(str2)
  
  count_of_string1 == count_of_string2
end

def hashify_string(str)
  hsh = {}
  str.each_char {|char| hsh[char] ? hsh[char] += 1 : hsh[char] = 1}
  hsh
end

p is_anagram('words go here', 'words gohere ') # true
p is_anagram(" ", " ") # true
p is_anagram('awesome', 'awesome ') # false
p is_anagram('buh', 'buhh') # false