class BinaryTree

  attr_accessor :payload, :left, :right

  def initialize(payload)
    @payload = payload
    @left = nil
    @right = nil
  end

  def set_value(value)
    @value = value
  end

  def set_left(node)
    @left = node if node.is_a?(TreeNode)
  end

  def set_right(node)
    @right = node if node.is_a?(TreeNode)
  end

  def insert_node(value)
    side = value < @value ? @left : @right
    if side.nil?
      new_node = TreeNode.new(value, nil, nil)
      value < @value ? set_left(new_node) : set_right(new_node)
    else
      side.insert_node(value)
    end
  end

  def flatten
    path = []
    path += @left.path unless @left.nil?
    path.push(@value)
    path += @right.path unless @right.nil?
    return path
  end
end

# seven = BinaryTree.new(7, nil, nil)
# five  = BinaryTree.new(5, nil, nil)
# four  = BinaryTree.new(4, nil, nil)
# six   = BinaryTree.new(6, nil, seven)
# three = BinaryTree.new(3, nil, six)
# two   = BinaryTree.new(2, four, five)
# trunk = BinaryTree.new(1, two, three)

unpath = [7, 4, 9, 1, 6, 14, 10]
binary_tree = BinaryTree.new(7)
#binary_tree.insert_node(1)
p binary_tree
