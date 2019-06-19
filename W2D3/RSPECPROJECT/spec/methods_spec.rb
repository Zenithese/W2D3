require "methods"

describe Array do 
  describe "#my_uniq" do
    it "removes duplicates from an array and returns the unique elements" do
      expect([1, 2, 1, 3, 3].my_uniq).to eq([1, 2, 3]) 
    end

    it "returns [] when self is empty" do 
      expect([].my_uniq).to eq([])
    end

    it "returns elements in original order" do
      expect([1, 3, 3, 2].my_uniq).to eq([1, 3, 2])
    end
  end 

  describe "#two_sum" do
    it "returns positions of pairs of numbers that add to zero" do
      expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
    end
    
    it "return pairs sorted smaller index before bigger index" do
      expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
    end 

    it "return pair sorted dictionary sorted" do
      expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]]) 
    end 
    
  end

  describe "#my_transpose" do
    it "will convert between the row-oriented and column-oriented representations" do
      expect([[0, 1, 2], [3, 4, 5], [6, 7, 8]].my_transpose).to eq([[0, 3, 6],[1, 4, 7],[2, 5, 8]])
    end 
  end 

  describe "#stock_picker" do 
    it "return an array of indicies for the most profitable buy/sell pair" do
      expect([22, 45, 9, 106, 2].stock_picker).to eq([2, 3])
    end
  end 
end 

