class Stack
    def initialize
      @stack = []
    end

    def push(el)
      @stack.unshift(el)# adds an element to the stack
    end

    def pop
      @stack.shift(el)# removes one element from the stack
    end

    def peek
      @stack.first # returns, but doesn't remove, the top element in the stack
    end
  end
