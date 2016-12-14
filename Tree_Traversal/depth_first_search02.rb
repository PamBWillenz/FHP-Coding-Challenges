class Tree

  attr_accessor :payload, :children

  def initialize(payload, children)
    @payload = payload
    @children = children
  end

# depth_first returns nil if 11 isn't in the tree
# if 11 is included, should return node containing 11

  def depth_first  
    puts @payload
    return @payload if @payload == 11
    @children.each do |child|
      value = child.depth_first
      if value
        return value
      end
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
puts "#{trunk.depth_first}"
