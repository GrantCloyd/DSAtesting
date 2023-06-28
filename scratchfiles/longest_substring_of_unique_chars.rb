
def longest_substring_of_uniq_chars(str)
  return 0 if str.length == 0

  arr = str.split("")
  max_count = 1
  current_count = 1
  # pointers within array using indexes
  left = 0
  right = 1

  while right <= arr.length do
    if arr[left] != arr[right]
      current_count += 1
      left += 1
    else
      current_count = 1
      left = right
    end

    right += 1
    max_count = current_count if current_count > max_count
  end

  max_count
end

# space complexity of O(n) (arr variable)
# time complexity of O(n)
p longest_substring_of_uniq_chars("hello") # 3
p longest_substring_of_uniq_chars("what do I have to do") # 21
p longest_substring_of_uniq_chars("welll          ?") # 3
p longest_substring_of_uniq_chars("well would you look at that") # 14, breaks at 'oo'