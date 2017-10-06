require_relative "../fib"

RSpec.describe Fib do
  it "returns 1 for n = 0" do
    fib = Fib.new
    expect(fib.fib(0)).to eq 1
  end

  it "returns 1 for n = 1" do
    fib = Fib.new
    expect(fib.fib(1)).to eq 1
  end

  it "returns 2 for n = 2" do
    fib = Fib.new
    expect(fib.fib(2)).to eq 2
  end

  it "returns 5 for n = 4" do
    fib = Fib.new
    expect(fib.fib(4)).to eq 5 
  end
end
