gem 'rspec'
require_relative 'max_slice'

context "#max_slice" do
  it "returns all elements if there are no negatives" do
    expect(max_slice([1,2,3])).to eq([1,2,3])
  end

  it "returns the larger slice for a center negative" do
    expect(max_slice([1,-2,3])).to eq([3])
  end

  it "returns the larger slice sum for an off-center -ve" do
    expect(max_slice([1,-2,3,4])).to eq([3,4])
  end

  it "returns the smallest -ve for all -ves" do
    expect(max_slice([-1,-2,-3])).to eq([-1])
  end

  it "returns the larger slice sum for multiple slices" do
    expect(max_slice([-1,2,3,-4,5,6])).to eq([5,6])
  end
end
