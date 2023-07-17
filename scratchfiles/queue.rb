# don't use plain Queue class as it overwrites the Thread::Queue class
class QueueTemp
  attr_accessor :first, :last, :size

  def initialize()
    @first = first
    @last = last
    @size = 0
  end

  def enqueue(val)
    new_node = create_node(val)
    
    @first = new_node && @last = new_node if @first.nil?

    temp = @last
    temp.next_node = new_node
    @last = new_node
    @size += 1 

  end

  def dequeue
    return nil if @first.nil?

    temp = @first
    @first = temp.next_node
    
    @last = nil if @first.nil?
    temp.next_node = nil
    @size -= 1

    temp
  end

  private

  def create_node(val)
    Node.new(val)
  end


  class Node
    attr_accessor :val , :next_node
    def initialize(val, next_node = nil)
      @val = val
      @next_node = next_node
    end
  end
end