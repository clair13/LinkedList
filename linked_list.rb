class Node
  attr_accessor :value, :next_node

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList
  def initialize
    @head = head
    @tail = tail
  end

  def append(node)
    if head.nil?
      @head = node
      @tail = node
    else
      @tail.next_node = node
      @tail = node
      @tail.next_node = nil
    end
  end

  def prepend(node)
    if @head.nil?
      @head = node
      @tail = node
    else
      node.next_node = @head
      @head = node
    end
  end

  def size
    count = 0 
    current_node = @head
    until current_node.nil?
      count += 1
      current_node = current_node.next_node
    end
    count
  end

  def head
    @head.value
  end

  def tail
    @tail.value
  end
end