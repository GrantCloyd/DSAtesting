def selection_sort(arr)
  return arr if arr.length <= 1

  current_index = 0
  temp_value = arr[current_index]
  swap_index = current_index
  current_val = arr[0]
  next_start_index = 1

  while next_start_index < arr.length
    if current_val && current_val <= temp_value 
      temp_value = current_val
      swap_index = current_index
    end 
    if current_index == arr.length - 1
      current_val = arr[next_start_index]
      current_index = next_start_index
      swap(arr, (next_start_index - 1), swap_index) unless (next_start_index - 1) == swap_index
      next_start_index += 1
      temp_value = current_val
    else 
      current_index += 1
      current_val = arr[current_index]
    end
  end

  arr 
end

def swap(arr, first_index, swap_index)
  temp = arr[first_index]
  arr[first_index] = arr[swap_index]
  arr[swap_index] = temp 
end

# O(n * n) time complexity
# O(1) space complexity

p selection_sort([4,2,3, 1])
p selection_sort([4,2,3, 1, 8, 10,  20, 30, 3, 8 , 9, 9])