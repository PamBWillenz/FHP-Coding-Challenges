class LinkedListNode
  attr_accessor :value, :next_node
 
  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end
 
def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else      
    print "nil\n"
    return
  end
end

class LinkedListLoop
  attr_accessor :start, :slow, :fast
 
  def initialize(start)
    @start = start
    @slow = start
    @fast = start
  end


  def infinite_loop?
    @slow = node  # slow moving node
    @fast = next_node  #faster moving node

    while @fast != nil
      if @slow == @fast # faster moving node has caught up to slower moving node
        return true
      elsif @fast.next_node = nil  # faster node reached end of list
        return false
      else
        @slow = @slow.next_node
        @fast = @fast.next_node.next_node
        return false
      end
  end
end

 
node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
node1.next_node = node3
infinite_loop = node3

print_values(node3)