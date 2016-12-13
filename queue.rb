class Queue
  class Node
    attr_accessor :next, :data

    def initialize(data)
      @data = data
    end
  end
  def enqueue(obj)
    if @first.nil?
      @last = Node.new(obj)
      @first = @last
    else
      @last.next = Node.new(obj)
      @last = @last.next
    end
  end
  def dequeue
    unless @first.nil?
      orig_first = @first
      @first = @first.next
      @last = nil if @first.nil?
      orig_first
    end
  end
end
