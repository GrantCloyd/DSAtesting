def collect_odd_values(arr)
  result = []

  recurse(arr, result)

  result
end

def recurse(arr, result)
  temp = arr.pop
  result << temp if temp.odd?
  return if arr.empty?
  recurse(arr, result)
end


p collect_odd_values([1, 3, 5, 20, 40, 50, 2, 7])
p collect_odd_values([2, 4,6, 8, 10, 12, 144])