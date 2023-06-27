def first_pair_sum_zero(arr)
    # write a function/method which accepts a sorted array of integers
    # the method should find the first pair where the sum is zero
    # return nil if none found

    return nil unless arr.length >= 2
    res = []
    current_val = arr.first
    check_val = arr[1]
    current_idx = 0
    check_idx = 1

    while current_idx <= arr.length - 2 do
      if current_val + check_val == 0 || current_val - check_val == 0
        res.concat([current_val, check_val]) && break
      elsif check_idx < arr.length - 1
        check_idx += 1
        check_val = arr[check_idx]
        next
      else     
        current_idx += 1
        current_val = arr[current_idx]
        check_idx = current_idx + 1
        check_val = arr[check_idx] 
      end
    end
  res.empty? ? nil : res
end

def faster_first_pair(arr)
  left = 0
  right = arr.length - 1
  while arr[left] < arr[right]
    sum = arr[left] + arr[right]
    return [arr[left], arr[right]] if sum == 0
    if sum > 0 
      right -= 1
    else 
      left += 1  
    end
  end
  nil
end



p first_pair_sum_zero([-3,-2,-1,0,1,2,3]) # [-3, 3]
p first_pair_sum_zero([-10, -5, -2, 0, 1, 2, 3, 4]) # [-2, 2]
p first_pair_sum_zero([0, 1]) # nil

p faster_first_pair([-3,-2,-1,0,1,2,3])
p faster_first_pair([-10, -5, -2, 0, 1, 2, 3, 4]) 
p faster_first_pair([0, 1]) # nil