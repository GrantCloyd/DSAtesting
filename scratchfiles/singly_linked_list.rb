class SinglyLinkedList
  attr_accessor :head 

  def initialize(head: nil)
    @head = head    
  end

  def create_and_add_node_to_end(val:)
    new_node = create_node(val)

    if @head.nil?
      @head = new_node
    else
      current_node = @head
      until current_node.next_node.nil?
        current_node = current_node.next_node
      end
      current_node.next_node = new_node
    end  
  end

  def pop_first_node
    return nil if head.nil?
    node = @head
    @head = @head.next_node
    node.next_node = nil

    node
  end

  def print_list_in_order
    values_in_order.each{|val|  p val }
  end

  def array_of_values
    values_in_order
  end

  def reverse_list_order
    return nil if @head.nil?
    prev_node = nil

    values_in_order.each do |val| 
      if prev_node.nil?
       prev_node = create_node(val)
      else
        new_node = create_node(val)
        new_node.next_node = prev_node
        prev_node = new_node
      end
    end
    @head = prev_node
  end

  private 

  def create_node(val)
    Node.new(val: val)
  end

  def values_in_order
    result = []
    if @head.nil?
      return result
    else 
      current_node = @head
      until current_node.nil?
        result << current_node.val
        current_node = current_node.next_node
      end
    end
    result
  end
end

class Node
  attr_accessor :next_node
  attr_reader :val

  def initialize(val:, next_node: nil)
    @val = val
    @next_node = next_node
  end
end

list = SinglyLinkedList.new
list.print_list_in_order
list.create_and_add_node_to_end(val: 45)
list.create_and_add_node_to_end(val: 2)
list.create_and_add_node_to_end(val: 8)
list.create_and_add_node_to_end(val: 24)

list.print_list_in_order
p list.array_of_values
list.reverse_list_order
p list.array_of_values
list.print_list_in_order
p list.pop_first_node
list.print_list_in_order


