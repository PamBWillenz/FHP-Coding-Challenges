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

def reverse_list(list, previous=nil)   # 37 -> 45 -> 11 -> nil
    # current_value -> 37
    current = list.value
    # loop through linked list until list = nil
    while list != nil
        old_next_node = list.next_node  #starts with 45 -> 11 -> nil
        list.next_node = previous  # 37 -> nil
        previous = list  # 37 -> nil
        list = old_next_node  # 45 -> 11 -> nil
    end
    return previous
end
    
# reverse lists
node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(45, node1)
node3 = LinkedListNode.new(11, node2)

print_values(node3)
puts "-------"
revlist = reverse_list(node3)
print_values(revlist)