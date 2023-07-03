# given a sorted array of integers, write a function called search_in_sorted_arr 
# that acepts a value and returns the index where the value passed to the function is located
# if value is not found return -1

def search_in_sorted_arr(arr, search_int)
  current_index = arr.length / 2
  pivot_size = current_index.even? ? current_index / 2 : (current_index / 2) + 1

  loop do
    if arr[current_index] == search_int
      break
    elsif arr[current_index] > search_int && current_index != 0
      current_index -= pivot_size
    elsif arr[current_index] < search_int && current_index != arr.length - 1
      current_index += pivot_size
    else 
      current_index = -1
      break 
    end
    pivot_size /= 2
    pivot_size = pivot_size.zero? ? 1 : pivot_size
  end

  current_index
end


# naive first pass at binary search, todo - refactor out pivot to something cleaner
# O(log n) time complexity
# O(1) space complexity

p search_in_sorted_arr([1,2,3,4,5,6], 4)
p search_in_sorted_arr([1,2,4,5,6,7,8,12, 16, 17, 18, 19, 20, 30, 35, 43, 44, 46], 30)
p search_in_sorted_arr([1,2,4,5,6,7,8,12, 16, 17, 18, 19, 20, 30, 35, 43, 44, 46, 47, 48, 49, 50], 46)
p search_in_sorted_arr([1,2,4,5,6,7,8,12, 16, 17, 18, 19, 20, 30, 35, 43, 44, 46, 47, 48, 49, 50], 50)
p search_in_sorted_arr([1,2,4,5,6,7,8,12, 16, 17, 18, 19, 20, 30, 35, 43, 44, 46, 47, 48, 49, 50], -1)
p search_in_sorted_arr([1,2,4,5,6,7,8,12, 16, 17, 18, 19, 20, 30, 35, 43, 44, 46, 47, 48, 49, 50], 1)
p search_in_sorted_arr([1,2,4,5,6,7,8,12, 16, 17, 18, 19, 20, 30, 35, 43, 44, 46, 47, 48, 49, 50], 33)