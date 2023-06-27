def count_uniq_built_in(arr)
  arr.uniq.count
end

# implement a method which accepts a sorted array and counts the unique values
# there can be negatives but it will always be sorted 
def  count_uniq_sliding_sorted(arr)
  return 0 if arr.length == 0

  left = 0
  right = 1
  count = 0

  while arr[right] < arr.length - 1 
    if arr[left] == arr[right]
      count += 1
    elsif arr[left] < arr[right]
      left = right
    end
    right += 1
  end
  arr.length - count
end

p count_uniq_built_in([1,2,3,4,4,5])
p count_uniq_sliding_sorted([1,2,3,4,4,5])
p count_uniq_sliding_sorted([1,1,1,1,4])
