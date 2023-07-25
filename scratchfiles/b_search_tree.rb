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

  def breadth_first_search
    return nil if @root.nil?
    queue = []
    visited = []

    queue << @root

    while !queue.empty?
      node = queue.shift
      if node.left
        queue << node.left
      end
      if node.right
        queue << node.right
      end
      visited << node.value
    end
    visited
  end

  def depth_first_search_preorder
    return nil if @root.nil?
    visited = []
    
    dfs_helper(@root, visited, :pre)
    
    visited
  end

  def depth_first_search_postorder
    return nil if @root.nil?
    visited = []
    
    dfs_helper(@root, visited, :post)
    
    visited
  end

  def depth_first_search_inorder
    return nil if @root.nil?
    visited = []
    
    dfs_helper(@root, visited, :in)
    
    visited
  end

  private

  def dfs_helper(node, arr, type)
    arr << node.value if type == :pre
    if (node.left)
      dfs_helper(node.left, arr, type)
    end
    arr << node.value if type == :in
    if (node.right)
      dfs_helper(node.right, arr, type)
    end
    arr << node.value if type == :post
  end

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