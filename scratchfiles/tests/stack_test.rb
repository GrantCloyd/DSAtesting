require_relative '../stack.rb'

# ruby tests/stack_test.rb 

stack = Stack.new
p stack.push(8) # 1 (length returned)
p stack.push(9) # 2
p stack.push('Dances with dynamic typing') # 3
p stack 
p stack.length # 3
p stack.pop # stack with dances
p stack.pop # stack node with 9 (points at no next node)
p stack.pop # stack node with 8 (points at no next node) 
p stack.pop # nil