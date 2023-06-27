def same(arr1, arr2)
  # write a function called same, which accepts two arrays;
  # the function should return true if every value in the array 
  # has it's corresponding value squared in the second 
  # array. The frequency of values must be the same
 
  comparison_hsh = arr1.each_with_object({}) do |int, hsh| 
    squared_val_to_sym = (int * int).to_s.to_sym
    hsh[squared_val_to_sym] ? hsh[squared_val_to_sym] += 1 : hsh[squared_val_to_sym] = 1
  end
  
  arr2.each do |int|
    sym_int = int.to_s.to_sym
    if comparison_hsh[sym_int]
      comparison_hsh[sym_int] -= 1
      if comparison_hsh[sym_int] == 0
        comparison_hsh.delete(sym_int)
      end
    else  
      return false 
    end
  end

  comparison_hsh.empty?
end

p same([1,2,3], [4, 1, 9]) # true
p same([1,2,3], [1,9]) # false
p same([1,2,1], [4,4,1]) # false, must be same frequency