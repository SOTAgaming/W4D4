class Array
  def my_uniq
 #   res = []
 #   hash = Hash.new(0)
#
 #   self.each do |el|
 #     res << el if hash[el] == 0 
 #     hash[el] += 1
 #   end
#
 # res 
   self.uniq
  end

  def two_sum
    res = []
      (0...self.length-1).each do |idx_1|
        (idx_1+1...self.length).each do |idx_2|
          res << [idx_1,idx_2] if self[idx_1] + self[idx_2] == 0
        end 
      end 

    res.empty? ? nil : res
  end

  def my_transpose
    res = Array.new(self.length) { Array.new([])}
    i = 0 
    while i < self.length 


    self.each_with_index do |row, row_idx|
      res[i] << row[i]
    end

    i += 1
  end

    res
  end
end