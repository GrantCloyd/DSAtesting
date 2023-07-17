

class Stack 
  attr_accessor :top, :length
  def initialize(top = nil)
    @top = top
    @length = 0
  end

  def push(val)
    temp = @top
    @top = create_node(val, temp)
    @length += 1
  end

  def pop
    return nil if @top.nil?

    temp = @top
    @top = temp.next_node
    temp.next_node = nil
    @length -= 1
    temp
  end

  private

  class StackNode
    attr_accessor :value, :next_node
    def initialize(value, next_node = nil)
      @value = value
      @next_node = next_node
    end
  end  

  def create_node(val, next_node)
    StackNode.new(val, next_node)
  end
end