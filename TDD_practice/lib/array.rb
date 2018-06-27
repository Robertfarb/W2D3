class Array
  
  def my_uniq
    result = []
    self.each {|el| result << el unless result.include?(el)}
    result
  end
  
  def two_sum
    pair = []
    i = 0
    while i < self.length
      j = i + 1
      while j < self.length
        pair << [i, j] if self[i] + self[j] == 0
        j += 1
      end
      i += 1
    end
    pair
  end
  
  def my_transpose
    result = self.dup
    i = 0
    
    while i < self.length
      j = i + 1
      while j < self.length
        result[i][j], result[j][i] = result[j][i], result[i][j]
        j += 1
      end
       i += 1
    end
    result
  end
  
end