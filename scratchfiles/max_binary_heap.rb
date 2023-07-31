class MaxBinaryHeap
  # array using n * 2 + 1 || n * 2 + 2 for parent to child relationship
  attr_accessor :values

  def initialize
    @values = []
  end

  def add(val)
    @values << val
    bubble_up
  end

  def remove_max
    return [] if @values.empty?
    max = @values.shift
    @values.unshift(@values.pop)
    trickle_down

    [max, @values]
  end

  private

  def swap(indx1, indx2)
    temp = @values[indx2]
    @values[indx2] = @values[indx1]
    @values[indx1] = temp 
  end 

  def bubble_up
    child_index = @values.length - 1
    parent_index = parent_index(child_index)
    
    while @values[child_index] > @values[parent_index]
      swap(parent_index, child_index)
      child_index = parent_index 
      parent_index = parent_index(child_index)
    end
  end

  def trickle_down
    indx = 0
    child_left_indx, child_right_indx = [1, 2]
    head = @values[indx]

    loop do
      if @values[child_left_indx] && head < @values[child_left_indx]
        swap(indx, child_left_indx)
        indx = child_left_indx   
      elsif @values[child_right_indx] && head < @values[child_right_indx]
        swap(indx, child_right_indx)
        indx = child_right_indx
      else 
        break
      end
      child_left_indx = indx * 2 + 1
      child_right_indx = indx * 2 + 2
    end
  end

  def parent_index(child_index)
    [0, ((child_index - 1) / 2.0).floor].max
  end

end 

mbh = MaxBinaryHeap.new
mbh.add(10)
mbh.add(15)
mbh.add(900)
mbh.add(8000)
mbh.add(6000)
mbh.add(30000)
p mbh.remove_max

p mbh.values