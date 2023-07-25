require_relative '../b_search_tree.rb'

# ruby tests/b_search_tree_test.rb

bs_tree = BinarySearchTree.new
puts " *** add root (25) ***"

bs_tree.insert(25)
p bs_tree.root

bs_tree.insert(20)
puts "\n \n *** add to root.left (20) ***"
p bs_tree.root.left

bs_tree.insert(30)
puts "\n \n *** add to root.right *** (30) "
p bs_tree.root.right 

bs_tree.insert(31)
puts "\n \n *** add to root.right.right (31) ***"
p bs_tree.root.right.right

bs_tree.insert(10)
puts "\n \n *** add to root.left.left (10) *** "
p bs_tree.root.left.left

bs_tree.insert(30)
puts " \n \n *** increase count of root.right (to 2) ***"
p bs_tree.root.right

bs_tree.insert(18)
puts " \n \n *** add to root.left.left.right (18) ***"
p bs_tree.root.left.left.right

bs_tree.insert(35)
puts "\n \n *** add to root.right.right.right (35) *** "
p bs_tree.root.right.right.right

bs_tree.insert(8)
puts "\n \n *** add to root.left.left.left (8) *** "
p bs_tree.root.left.left.left

puts "\n \n *** return tree strutcture ***"
p bs_tree

puts "\n\n *** does 25 exist? ***"
p bs_tree.find(25)

puts "\n\n *** does 30 exist? ***"
p bs_tree.find(30)

puts "\n\n *** does 8 exist? ***"
p bs_tree.find(8)

puts "\n\n *** does 23 exist? ***"
p bs_tree.find(23)

puts ("\n\n *** bfs ***")
p bs_tree.breadth_first_search

puts ("\n\n *** dfs preorder ***")
p bs_tree.depth_first_search_preorder

puts ("\n\n *** dfs postorder ***")
p bs_tree.depth_first_search_postorder

puts ("\n\n *** dfs inorder ***")
p bs_tree.depth_first_search_inorder