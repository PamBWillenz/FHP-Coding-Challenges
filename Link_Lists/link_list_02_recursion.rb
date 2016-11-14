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

def reverse_list(list, previous=nil) # list 37 -> 45 -> 11 -> nil
  # store current_value
  next_node = list.next_node     # 37
  # change the current nodes next link to previous link 
  list.next_node = previous   # 37 -> nil
  # if the current value doesn't equal nil, go thru recursive reverse_list
  if next_node != nil
    # set the current node to be the next node until the node value is nil
    reverse_list(next_node, list)
  else
    # return reversed list
    list
  end
end

# reverse lists
node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(45, node1)
node3 = LinkedListNode.new(11, node2)

print_values(node3)
puts "-------"
revlist = reverse_list(node3)
print_values(revlist)    