# write a method that finds the longest substring of matching characters in a given string

def longest_substring_of_matching_chars(str)
  return 0 if str.length == 0

  arr = str.split("")
  max_count = 1
  current_count = 1
  left = 0
  right = 1

  while right <= arr.length do
    if arr[left] == arr[right]
      current_count += 1 
    else
      if current_count > max_count 
        max_count = current_count
      end
      current_count = 1
      left = right
    end
    right += 1
  end
  max_count
end

p longest_substring_of_uniq_chars("hello")
p longest_substring_of_uniq_chars("why")
p longest_substring_of_uniq_chars('whyyyyyyyyyyyyyyyyyyyyyyyy')
p longest_substring_of_uniq_chars('yyyyysso')
p longest_substring_of_uniq_chars('111113333223')