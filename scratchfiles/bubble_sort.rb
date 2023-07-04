# sorts in place, swaps allow for earlier cut off in case of mostly osrted arrays
# adds ability to sort asc or desc with a default of asc with some ruby metaprogramming

def bubble_sort(arr, type = nil)
  current_index = 0
  compare_index = 1
  current_temp_val = arr[current_index]
  next_temp_val = arr[compare_index]
  last_index = arr.size - 1
  swaps = 0
  comparison = if type == :asc || type.nil?
                 '>' 
               elsif type == :desc   
                 '<'
              end

 while last_index > 0 do
    if current_temp_val.send comparison, next_temp_val
      arr[current_index] = next_temp_val
      arr[compare_index] = current_temp_val
      swaps += 1
    end

    if compare_index == last_index 
      if swaps == 0 then break end
      
      last_index -= 1
      current_index = 0
      swaps = 0
    else
      current_index = compare_index
    end

    compare_index = current_index + 1
    current_temp_val = arr[current_index] 
    next_temp_val = arr[compare_index]      
  end

  arr
end

# time complexity of O(n * log n)
# space complexity of O(1)


p bubble_sort([1,2,3, 8, 6, 2, 4,5],  :asc)
p bubble_sort([1,2,3, 8, 6, 2, 4, 5, 25, 34, 3, 8, 10,  17, 85, 1, 4, 9, 9, 32], :desc)
p bubble_sort([1,2,3, 8, 6, 2, 4, 5, 25, 34, 3, 8, 10,  17, 85, 1, 4, 9, 9, 32], :asc)
p bubble_sort([1,2,3,4,5,7,6]) # accepts  nil and sorts asc
p bubble_sort([8,2,3,4,5,7,6], :desc)
