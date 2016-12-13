Class TreeNode
  def initialize(value, left, right)
    @value = value
    @left = left
    @right = right
  end

  def value(value)
    @value = value
  end

  def left_node(node)
    @left = node if node.is_a?(Treenode)
  end

  def right_node(node)

  end

  def breadth_first_search(item)
    return self if self.value == item
    queue = []
    queue << self
    while !queue.empty?

  end

end

# The Leaf's of a tree, elements that have no children
deep_fifth_node = Tree.new(5, [])
eleventh_node = Tree.new(11, [])
fourth_node = Tree.new(4, [])

# The "Branches" of the tree
ninth_node = Tree.new(9, [fourth_node])
sixth_node = Tree.new(6, [deep_fifth_node, eleventh_node])
seventh_node = Tree.new(7, [sixth_node])
shallow_fifth_node = Tree.new(5, [ninth_node])

# The "Trunk" of the tree
trunk = Tree.new(2, [seventh_node, shallow_fifth_node])
puts "#{trunk.depth_first}"
