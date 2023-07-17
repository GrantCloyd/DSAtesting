require_relative '../queue.rb'

q = QueueTemp.new
p q.enqueue(6) # 1 
p q
p q.enqueue(10) # 2 
p q.enqueue(13) # 3
p q
p q.dequeue # node with 6
p q
p q.dequeue # node with 10
p q # first and last 13
p q.dequeue # node with 13
p q # first and last nil
p q.dequeue # nil