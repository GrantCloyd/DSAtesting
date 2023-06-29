# write a method called max_subarray_sum which accepts an array of integers and a number called n
# the method should calculate the max sum of n consecutive elements in the array

def max_subarray_sum(arr, n)
  return nil if arr.length < n
  
  max_total = arr.slice(0, n).sum
  current_indx = 0
  next_indx = n
  current_total = max_total

  for _i in (next_indx+1)..arr.length
    current_total = current_total - arr[current_indx] + arr[next_indx]
    max_total = max_total > current_total ? max_total : current_total
    current_indx += 1
    next_indx += 1
  end

  max_total
end

# sliding window approach
# O(n) time complexity
# O(1) space complexty

p max_subarray_sum([1,2,5,2,8,1,5], 2) # 10
p max_subarray_sum([1,2,5,2,8,1,5], 4) # 17
p max_subarray_sum([4,2, 1, 6], 1) # 6
p max_subarray_sum([4,2,1,6,2], 4) # 13
p max_subarray_sum([-1,-2,-5, -2, -8, -1, -5], 2) # -3
p max_subarray_sum([1, 2,3,4,5,6,7,8,9,10, 11, 2, 2,3, 4, 5, 6, 7, 9, 9, 9, 9, 10, 12, 13, 14, 12, 12, 10, 9, 4, 6, 8, 15], 6) # 73
p max_subarray_sum([], 1) # nil