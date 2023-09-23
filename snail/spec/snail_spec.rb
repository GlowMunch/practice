require "./lib/snail"

RSpec.describe Snail do
  it "exists" do
      snail = Snail.new
      expect(snail).to be_a(Snail)
  end

  it "can make a snail from matrix data" do

    array_matrix = [
      [1, 2, 3 ,4],
      [5, 6, 7, 8],
      [9, 10, 11, 12],
      [13, 14, 15, 16]
      ]

      exected = [1, 2, 3, 4, 8, 12, 16, 15, 14, 13, 9, 5, 6, 7, 11, 10]

      expect(Snail.snail(array_matrix)).to eq(exected)
  end
end