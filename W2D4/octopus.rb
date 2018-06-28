require 'byebug'
class Array


#n-squared: bubble sort is... nto sure if this
  def pair_search
    bigger = ""
    l = self.length
    self.each_with_index do |ele,i| #want to compare the element to another element
      (i+1...l).to_a.each do |j| #this sets compartor to start at i+1
        # debugger
        big = ""
        ele.size > self[j].size ? big = ele : big = self[j]
        big.size > bigger.size ? bigger = big : bigger
      end
    end
    bigger
  end

  def merge_sort
    return self if self.length <= 1

    mid = self.length / 2
    left = self.take(mid).merge_sort
    right = self.drop(mid).merge_sort

    Array.merge(left, right)
  end

  def self.merge(left,right)
    merged = []

    until left.empty? || right.empty?
      l1 = left.first
      r1 = right.first
     l1.size > r1.size ? merged << left.shift : merged << right.shift
    end

    merged + left + right
  end

  def compare_sort
    bigger = ''
    self.each do |ele|
      bigger = ele if ele.size > bigger.size
    end
    bigger
  end

end #end class

fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
p fish.pair_search
p fish.merge_sort.first
p fish.compare_sort
