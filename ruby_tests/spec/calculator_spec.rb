class Calculator
  def calculate(expression)
    match = expression.match /(\d+)([+\-*\/])(\d+)/
    raise("invalid expression") if match.nil?

    a, b = match[1].to_i, match[3].to_i
    case match[2]
    when "+" then a + b
    when "-" then a - b
    when "*" then a * b
    when "/" then a / b
    end
  end
end

RSpec.describe Calculator do
  describe "#calculate" do
    it "returns 5 for 2+3 expression" do
      expect(subject.calculate("2+3")).to eq 5
    end

    it "returns 10 for 3+7 expression" do
      expect(subject.calculate("3+7")).to eq 10
    end

    it "returns 24 for 3*8 expression" do
      expect(subject.calculate("3*8")).to eq 24
    end

    it "returns -1 for 4-5 expression" do
      expect(subject.calculate("4-5")).to eq -1
    end

    it "returns 5 for 40/8 expression" do
      expect(subject.calculate("40/8")).to eq 5
    end

    it "raises error for division by 0" do
      expect { subject.calculate("40/0") }.to raise_error(ZeroDivisionError)
    end

    it "raises error for 3,5 expression" do
      expect { subject.calculate("3,5") }.to raise_error(RuntimeError, "invalid expression")
    end

    it "raises error for + expression" do
      expect { subject.calculate("+") }.to raise_error(RuntimeError, "invalid expression")
    end
  end
end
