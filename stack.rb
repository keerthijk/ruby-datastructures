class Stack
  class Node
    attr_accessor :next, :data

    def initialize(data)
      @data = data
    end
  end
  def pop
    unless @top.nil?
      @top = @top.next
      @top.data if @top
    end
  end
  def push(obj)
    if @top.nil?
      @top = Node.new(obj)
    else
      old_top = @top
      @top = Node.new(obj)
      @top.next = old_top
    end
  end
  def peek
    @top.data if @top
  end
end
