class Tree

  attr_accessor :payload, :children

  def initialize(payload, children)
    @payload = payload
    @children = children
  end

  def depth_first(start, n)  # if n is found in start, return the value "n has been found"
    if start.payload = n     # if n is not found in start, return nil
      return "#{n} has been found"
    else
      puts "#{start.payload} is not the number"
    end
    start.children.each do |child|
      value = depth_first(child, n)
      return value if value != nil
    end
    return nil
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
puts depth_first(trunk, '')
