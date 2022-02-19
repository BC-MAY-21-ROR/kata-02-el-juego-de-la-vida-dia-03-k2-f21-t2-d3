class Calculator
  def add(a, b)

  end
  
end

describe Calculator do
  describe "#add" do
    it "adds two numbers" do
      calculator = Calculator.new

      expect(calculator.add(1, 1)).to eq(2)
    end
  end
end