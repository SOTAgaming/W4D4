require 'first_tdd'
require "rspec"

RSpec.describe Array do 
  describe "Array#my_uniq" do
    it "should not raise error if called on an Array" do 
      expect {[0,1,2,3]}.to_not raise_error
     # expect([1, 2, 1, 3, 3].my_uniq).to_not have_received(:uniq)
     array = [1, 2, 1, 3, 3]
      #array.my_uniq 
      expect(array).to_not receive(:uniq)
      array.my_uniq 
    end

    it "should not mutate the original array" do 
      array = [1, 2, 1, 3, 3]
      obj_id1 = array.object_id
      array.my_uniq
      expect(array.object_id).to eq(obj_id1)
      #expect([1, 2, 1, 3, 3].my_uniq).to_not have_received(:uniq)
      array = [1, 2, 1, 3, 3]
      #array.my_uniq 
      expect(array).to_not receive(:uniq)
      array.my_uniq 
    end

    it "should return a new array without duplicates" do  
      expect([1, 2, 1, 3, 3].my_uniq).to eq([1, 2, 3])
     # expect([1, 2, 1, 3, 3].my_uniq).to_not have_received(:uniq)
     array = [1, 2, 1, 3, 3]
      #array.my_uniq 
      expect(array).to_not receive(:uniq)
      array.my_uniq 
    end

    it "should not call #uniq" do
      array = [1, 2, 1, 3, 3]
      #array.my_uniq 
      expect(array).to_not receive(:uniq)
      array.my_uniq 
    end
  end

  describe "Array#two_sum" do
      it 'should return an array of 2 indexes of elements that sum to 0' do
        expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
      end
      it "should return nil if no pairs sum to zero" do
        expect([-1, 0, 2].two_sum).to eq(nil)
      end 
  end

  describe "Array#my_transpose" do
    it "Array should be a square" do
      array = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ]
    expect(array.length).to eq(array[0].length)
    end

    it "should turn the array's rows into columns" do
      array = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ]

  cols = [
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8]
  ]
  expect(array.my_transpose).to eq(cols)
    end
  end

  describe 'Array#stock_picker' do
    
  end
end
