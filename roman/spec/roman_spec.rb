require "./lib/roman.rb"



RSpec.describe "roman" do
  it "exists" do

    roman = Roman.new


    expect(roman.to_numerals(2500)).to eq("MMD")
    expect(roman.to_numerals(128)).to eq("CXXVIII")
    expect(roman.to_numerals(1293)).to eq("MCCXCIII")



  end
end