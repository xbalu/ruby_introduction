require_relative "../stack"

RSpec.describe Stack do
  let(:stack) do
    # described_class.new
    subject
    # subject = described_class.new
  end

  describe "#pop" do
    context "when stack is empty" do
      it "raises error" do
        expect { stack.pop }.to raise_error(RuntimeError, "stack is empty")
      end
    end

    context "when stack is not empty" do
      before do
        stack.push(8)
      end

      # let(:stack) do
      #   Stack.new.tap { |stack| stack.push(8) }
      # end

      it "doesn't raise error" do
        expect { stack.pop }.to_not raise_error
      end
    end

    it "returns elements in reversed order" do
      stack.push(1)
      stack.push(2)
      expect(stack.pop).to eq 2
      expect(stack.pop).to eq 1
    end
  end

  describe "#push" do
    it "returns nil" do
      expect(stack.push(1)).to eq nil
    end
  end
end
