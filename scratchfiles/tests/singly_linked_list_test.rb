
require_relative '../singly_linked_list.rb'

LIST = SinglyLinkedList.new
list = LIST

def show_values
  p LIST.send(:values_in_order) 
end

list.create_and_add_node_to_end(val: 45)
list.create_and_add_node_to_end(val: 2)
list.create_and_add_node_to_end(val: 8)
list.create_and_add_node_to_end(val: 24)
show_values # [45, 2, 8, 24]
list.reverse_list_order
show_values # [24, 8, 2, 45]

p list.pop_first_node # node w/ val of 24
show_values
p list.insert_at(val: 3, index: 'w') # error
p list.insert_at(val: 3, index: -1) # error
list.insert_at(val: 3, index: 3)  # [8, 2, 45, 3]
list.insert_at(val: 80, index: 0) # [80, 8, 2, 45, 3]
list.insert_at(val: "words are fine too", index: 2) #[80, 8, "words are fine too", 2, 45, 3]
p list.insert_at(val: 85, index: 30) # error