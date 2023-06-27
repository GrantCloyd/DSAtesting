
def longest_substring_of_uniq_chars(str)
  return 0 if str.length == 0

  arr = str.split("")
  max_count = 1
  current_count = 1
  left = 0
  right = 1

  while right <= arr.length do
    if arr[left] != arr[right]
      current_count += 1
      left += 1
    else
      if current_count > max_count 
        max_count = current_count
      end
      current_count = 1
      left = right
    end
    right += 1
  end

  # todo, clean up - catch edge case where last count doesn't get caught by else statement
  max_count = current_count > max_count ? current_count : max_count

  max_count
end

p longest_substring_of_uniq_chars("hello")
p longest_substring_of_uniq_chars("what do I have to do") # 21
p longest_substring_of_uniq_chars("welll          ?") # 3
p longest_substring_of_uniq_chars("well would you look at that") # 14