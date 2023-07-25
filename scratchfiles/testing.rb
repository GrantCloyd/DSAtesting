require 'pry'

def reverse_built_in(string)
  string.reverse  
end

def reverse_recursive(string)
  return "" if string.length == 0
  
  string[-1] + reverse_recursive(string.slice(0, string.length - 1))
end

def reverse_iterative(string)
  new_string = ""

  string.each_char{|char| new_string.prepend(char)} 
  new_string
end

p reverse_built_in("Madam, I'm Adam.")
=> ".madA m'I ,madaM"
p reverse_recursive("Madam, I'm Adam.")
=> ".madA m'I ,madaM"
p reverse_iterative("Madam, I'm Adam.")
=> ".madA m'I ,madaM"
