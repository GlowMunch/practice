require "./lib/sum"
require "./lib/nums"

RSpec.describe Sum do
  describe "it exists" do
    it "can be a Sum" do
      sum = Sum.new
      expect(sum).to be_a(Sum)
    end

    it "can find first 25 palendromes over 1000 with two numbers that are inverses of each other" do
      #must be over 500
      x = (500..5000).to_a
      sum = Sum.new
      expect(sum.palendrome(x).count).to eq(25)
    end
  end
end

RSpec.describe Nums do
  describe "it exists" do
    it "can be a Nums" do
      nums = Nums.new
      expect(nums).to be_a(Nums)
    end

    it "can find the target" do
      nums = [3,2,4]
      target = 6
      result = [1,2]

      expect(Nums.two_sum(nums, target)).to eq(result)
    end
  end
end
