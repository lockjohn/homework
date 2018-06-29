require 'byebug'
class LRUCache
    def initialize(size = 4)
      @cache_size = size
      @cache = []
    end

    def count
      @cache.length
    end

    def add(el)
      @el = el
      present? ? rotate : (full? ? replace : push)
    end

    def show
      p @cache
    end

    private
    # helper methods go here!
    def present?
      @cache.include?(@el)
    end

    def rotate
      @cache.delete(@el) #can I combine with a rotate?
       push
     end

    def replace
      @cache.delete_at(0)
      push
    end

    def push
      @cache.push(@el)
    end

    def full?
      @cache.count >= @cache_size
    end
  end

  if $PROGRAM_NAME == __FILE__
    johnny_cache = LRUCache.new(4)
      # debugger
      johnny_cache.add("I walk the line")
      johnny_cache.add(5)

p     johnny_cache.count
    # debugger
      johnny_cache.add([1,2,3])
      johnny_cache.add(5)
      johnny_cache.add(-5)
      johnny_cache.add({a: 1, b: 2, c: 3})
      johnny_cache.add([1,2,3,4])
      johnny_cache.add("I walk the line")
      johnny_cache.add(:ring_of_fire)

      johnny_cache.add("I walk the line")
      johnny_cache.add({a: 1, b: 2, c: 3})
      johnny_cache.show

  end
