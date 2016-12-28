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

  def insert(value)
    insert_value(@root, value)
  end

  def sort
    traverse(@root)
  end

  private

  def insert_value(node, value)
    if value < node.payload && node.left == nil
      new_node = Node.new(value)
      node.left = new_node
      return
    elsif value > node.payload && node.right == nil
      new_node = Node.new(value)
      node.right = new_node
      return
    elsif value < node.payload && node.left != nil
      insert_value(node.left, value)
    elsif value > node.payload && node.right != nil
      insert_value(node.right, value)
    end
  end

  def traverse(node)
    if node == nil
      return
    end
      traverse(node.left)
      puts node.payload
      traverse(node.right)
  end



    
end

btree = BinaryTree.new(2)
btree.insert(1)
btree.insert(3)
btree.insert(4)
p btree

btree.sort
