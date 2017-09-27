class SinglyLinkedList
  attr_reader :head
  class Node
    attr_accessor :data, :next

    def initialize(data)
      @data = data
    end
  end
  def initialize
    @head = nil
  end
  def is_empty?
    @head.nil?
  end
  def remove!(node_to_remove)
    node = @head
    prev = nil

    until node.next.nil?
      if node == node_to_remove
        prev.next = node.next
        return
      else
        prev = node
      end
      node = node.next
    end
  end
  def unique!
    node = @head
    prev = nil
    element_list = []

    until node.nil?
      if element_list.include? node.data
        prev.next = node.next
      else
        element_list << node.data
        prev = node
      end
      node = node.next
    end
  end
  def insert(data)
    new_node = Node.new(data)
    new_node.next = @head
    @head = new_node
    new_node
  end
  def reverse_using_iteration
    node = @head
    prev = nil
    until node.nil?
      next_node = node.next
      node.next = prev
      prev = node
      node = next_node
    end
    @head = prev
  end
  def reverse_using_recursion(node=@head)
    if node.next.nil?
      @head = node
      return
    end
    reverse_using_recursion(node.next)
    node.next.next = node
    node.next = nil
  end
  def print(&block)
    node = @head
    until node.nil?
      node = node.next
      yield node
    end
  end
end
