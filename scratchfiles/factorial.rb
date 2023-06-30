# factorial for positive ints

def recusive_factorial(int)
  return int if int == 0

  int * recusive_factorial(int - 1)
end

p recusive_factorial(10)