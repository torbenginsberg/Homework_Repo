require "byebug"

class LRUCache
    attr_reader :cache_size

    def initialize(cache_size)
        @cache_size = cache_size
        @underlying_arr = []
    end

    def count
      # returns number of elements currently in cache
      @underlying_arr.count
    end

    def add(el)
      # adds element to cache according to LRU principle
      if @underlying_arr.include?(el)
        @underlying_arr.delete(el)
        @underlying_arr << el
        return
      end

      if full?
        @underlying_arr.shift
      end

      @underlying_arr << el
    end

    def show
      # shows the items in the cache, with the LRU item first
      print @underlying_arr
    end

    private
    def size
        @underlying_arr.count
    end

    def full?
        size == cache_size
    end
  end

  johnny_cache = LRUCache.new(4)

  johnny_cache.add("I walk the line")
  johnny_cache.add(5)

  johnny_cache.count # => returns 2

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