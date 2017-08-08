class Stack
    def initialize
      # create ivar to store stack here!
      @stack = []
    end

    def add(el)
      # adds an element to the stack
      @stack.push(el)
    end

    def remove
      # removes one element from the stack
      @stack.pop
    end

    def show
      # return a copy of the stack
      @stack
    end
  end

  class Queue
    def initialize
      @queue = []
    end

    def enqueue(el)
      @queue.unshift(el)
    end

    def dequeue
      @queue.shift(1)
    end

    def show
      @queue
    end
  end

  class Map
    # my_map = [[k1, v1], [k2, v2], [k3, v2], ...]
    def initialize
      @map = []
    end

    def assign(key, value)
      #if key already exists, update value
      if !@map.empty? && keys.include?(key)

        temp_vals = values
        temp_vals[key_index(key)] = value
        @map = [keys, temp_vals].transpose
      else
        @map.push( [key, value] )
      end
    end

    def lookup(key)
      values[key_index(key)]
    end

    def remove(key)
      temp_keys = keys
      temp_vals = values
      index = key_index(key)

      temp_keys.delete_at(index)
      temp_vals.delete_at(index)

      @map = [temp_keys, temp_vals].transpose
    end

    def show
      @map
    end

    def keys
      @map.transpose[0]
    end

    def values
      @map.transpose[1]
    end

    def key_index(key)
      keys.index(key)
    end
  end

# if __FILE__ == $PROGRAM_NAME
#   m = Map.new
#   m.assign(1, "one")
#   m.assign(2, "two")
#   m.assign(3, "three")
#   p m
# end
