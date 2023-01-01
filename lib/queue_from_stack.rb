require_relative './stack'

# your code here
class MyQueue
  def initialize
    @s1 = Stack.new
    @s2 = Stack.new
  end

  def add(value)
    back_order
    @s1.push(value)
  end

  def remove
    right_order
    @s2.pop
  end

  def peek
    right_order
    @s2.peek
  end

  def right_order
    until @s1.empty?
      @s2.push(@s1.pop)
    end
    @s2
  end

  def back_order
    until @s2.empty?
      @s1.push(@s2.pop)
    end
    @s1
  end
end