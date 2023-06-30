# takes in an array of integers and determines if any are odd

def recursive_is_odd?(arr)
  return false if arr.pop.odd?
  return true if arr.empty?

  recursive_is_odd?(arr)    
end

# no auxillary space 
p recursive_is_odd?([122, 234, 444, 800, 900, 200,  50])
p recursive_is_odd?([124, 300, 34, 25, 12, 46, 80])