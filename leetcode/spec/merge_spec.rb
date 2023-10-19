require "./lib/merge.rb"

RSpec.describe "merge" do
  it "exists" do
    test = MakeMerge.new
  end

  it "can merge two lists" do
    a = [5, 4, 3]
    b = [2, 1, 6]

    expected = [1, 2, 3, 4, 5, 6]
    not_expected = [1, 2, 3, 4, 5, 7]
    test = MakeMerge.new

    expect(test.merge_list(a, b)).to eq(expected)
    expect(test.merge_list(a, b)).to_not eq(not_expected)
  end
end