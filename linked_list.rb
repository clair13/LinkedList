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

  def at(index)
    i = 0
    current_node = @head
    until current_node.nil?
      if i == index
        return current_node
      else
        i += 1
        current_node = current_node.next_node
      end
    end
  end

  def pop
    current_node = @head
    until current_node.next_node == @tail
      current_node = current_node.next_node
    end
    @tail = current_node
    @tail.next_node = nil
  end

  def contains?(value)
    current_node = @head
      until current_node == nil
        return true if current_node.value ==value
        current_node = current_node.next_node
      end
    false
  end

  def find(value)
    current_node = @head
    i = 0
    until current_node.nil?
      if current_node.value == value
        return i 
      else
        current_node = current_node.next_node
        i += 1
      end
      nil
    end
  end

  def to_s
    rep = ""
    current_node = @head
    until current_node == nil
      rep += "( #{current_node.value} ) -> "
      current_node = current_node.next_node
    end
    rep += "nil"
  end

end