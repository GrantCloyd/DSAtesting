class BinarySearchTree
  attr_accessor :root
  def initialize(root = nil)
    @root = root
  end

  def insert(value)
    node = Node.new(value)

    if @root.nil?
      @root = node 
      return self
    end

    current_node = @root
    
    loop do
      if current_node.value > node.value 
        if current_node.left.nil? 
          current_node.left = node
          break
        end
        current_node = current_node.left
      elsif current_node.value < node.value 
        if current_node.right.nil? 
          current_node.right = node
          break
        end
        current_node = current_node.right
      # handle duplicates
      elsif current_node.value == node.value 
        current_node.count += 1
        break
      end
    end
    self
  end

  def find(val)
    return nil if @root.nil?

    if @root.value == val 
       return @root
    end
    
    current_node = @root

    loop do
      if current_node.value > val
        if current_node.left.nil? 
          return false
        end
        current_node = current_node.left
      elsif current_node.value < val
        if current_node.right.nil? 
          return false
        end
        current_node = current_node.right
      elsif current_node.value == val
        return current_node
      end
    end
  end

  private

  def create_node(value, left = nil, right = nil)
    Node.new(value, left, right)
  end

  class Node
    attr_accessor :value, :left, :right, :count
    def initialize(value, left = nil, right = nil)
      @value = value
      @left = left
      @right = right
      @count = 1
    end
  end
end