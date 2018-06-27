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
  
  def stock_picker
    highest_pair = [0, 1]
    i = 0
    while i < self.length
      j = i + 1
      while j < self.length
        current_sum = self[i] + self[j]
        current_highest_sum = self[highest_pair[0]] + self[highest_pair[1]]
        highest_pair = [i, j] if current_sum > current_highest_sum
        j += 1
      end
      i += 1
    end
    highest_pair
  end
  
end