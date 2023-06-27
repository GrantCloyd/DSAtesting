def average_pair(arr, average)
  paired_hash = arr.each_with_object({}) {|int, result| result[int.to_f] = average * 2.0 - int}
  paired_hash.each do |_k,v|
    if paired_hash[v]
      return true 
    end
  end
false 
end

p average_pair([1,2,3], 2.5)
p average_pair([1, 3, 3, 5, 6, 7, 10, 12, 19], 8) 
p average_pair([-1, 0, 3, 4, 5, 6], 4.1)