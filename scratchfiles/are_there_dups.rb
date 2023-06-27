def are_there_dups(*params)
  dup_hash = {}
  params.each do |p|
    if dup_hash[p] == true
      return true 
    else
      dup_hash[p] = true
    end
  end
  false
end

p are_there_dups(1,2,3)
p are_there_dups(1,2,2)
p are_there_dups('1', '2', '3', 'a', 1, 2, '1')