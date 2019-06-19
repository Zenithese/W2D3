class Array

  def my_uniq
    self.uniq
  end

  def two_sum
    result = []
    self.each_with_index do |ele1, i|
      self.each_with_index do |ele2, j|
        if ele1 + ele2 == 0 && i < j 
          result << [i,j]
        end 
      end 
    end 
    result
  end 

  def my_transpose
    self.transpose
  end 

  def stock_picker
    min_idx = 0
    max_idx = 0
    min_ele = self[0]
    max_ele = self[0]
    # self.each_with_index do |ele, idx| 
    #   if ele < min_ele && 
    #     min_idx = idx 
    #     max_ele = ele
    #   end
    # end
    # self.each_with_index do |ele, idx| 
    #   if ele > max_ele
    #     max_idx = idx
    #     max_ele = ele
    #   end
    profit = self[1] - self[0]
    money_pair = [0, 1]
    self.each_with_index do |ele, idx|
      self.each_with_index do |ele2, idx2|
        if idx2 > idx && ele2 - ele > profit
          profit = ele2 - ele
          money_pair = [idx, idx2]
        end
      end
    end
    money_pair
  end
        
end