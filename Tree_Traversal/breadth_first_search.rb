class Tree
  attr_accessor :payload, :children

  def initialize(payload, children)
    @payload = payload
    @children = children
  end

end

class Queue
  def initialize
    @queue = []
  end

  def enqueue(item)
    @queue.push(item)
  end

  def dequeue
    @queue.shift
  end

  def breadth_first(node, value)
    return "no value" if node.nil?
    node.children.each do |child|
      enqueue(child)
      return "value = #{value}" if child.payload == value
    end

    current_node = dequeue
    breadth_first(current_node, value)
  end
end

# queue = MyQueue.new

# queue.enqueue(1)
# queue.enqueue(2)
# puts queue.dequeue
# queue.enqueue(3)
# queue.enqueue(4)
# queue.enqueue(5)
# puts queue.dequeue
# queue.enqueue(6)
# puts queue.dequeue
# puts queue.dequeue
# puts queue.dequeue
# puts queue.dequeue

# The Leaf's of a tree, elements that have no children
fifth_node = Tree.new(5, [])
eleventh_node = Tree.new(11, [])
fourth_node = Tree.new(4, [])

# The "Branches" of the tree
ninth_node = Tree.new(9, [fourth_node])
sixth_node = Tree.new(6, [fifth_node, eleventh_node])
seventh_node = Tree.new(7, [sixth_node])
fifth_node = Tree.new(5, [ninth_node])

# The "Trunk" of the tree
trunk = Tree.new(2, [seventh_node, fifth_node])
queue = Queue.new
puts queue.breadth_first(trunk, 11)
