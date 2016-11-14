class LinkedListNode
  attr_accessor :value, :next_node
 
    def initialize(value, next_node=nil)
        @value = value
        @next_node = next_node
    end
end

class Stack
    attr_reader :data
    
    def initialize
        @data = nil
    end

    # Push a value onto the stack
    def push(value)
        @data = LinkedListNode.new(value, @data)
    end

    # Pop an item off the stack and return value to the user
    def pop
        # store top value in variable
        node_value = @data.value
        # replace top node with next node in stack
        @data = @data.next_node
        # return top node value
        return node_value
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
end    

    def reverse_list(list, stack)   # 12 -> 99 -> 37 -> nil
        # create a stack
        # stack = Stack.new
        # loop through linked list and push each node onto the stack
        while list != nil
            # push node onto stack
            stack.push(list.value)
            # go to next node in original list
            list = list.next_node
        end
        stack.data
    end
    
# build 3 nodes and link them together
node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

stack = Stack.new
stack.print_values(node3)
# puts "-------"
revlist = reverse_list(node3, stack)
stack.print_values(revlist)

# stack = Stack.new
# stack.push(1)
# stack.push(2)
# puts stack.pop # Pops (removes the top number from the stack => 2)
# puts stack.pop # Pops the remaining number from the stack => 1
# puts stack.pop # empty so returns nil

