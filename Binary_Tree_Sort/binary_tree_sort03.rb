class Node
  attr_accessor :payload, :left, :right

  def initialize(payload)
    @payload = payload
  end
end

class BinaryTree
  attr_accessor :root

  def initialize(root_value)
    @root = Node.new(root_value)
  end

  def insert_value(value)
    node = Node.new(value)

    # code where you check node's payload
    # is this node's payload less or greater than root's payload

  end

end

node_a = Node.new(1)
node_b = Node.new(2)
node_c = Node.new(3)

node_a.left = node_b
node_a.right = node_c
p node_a
