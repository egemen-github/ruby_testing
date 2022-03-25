require './lib/calculator'

describe Calculator do
  describe '#add' do
    it 'returns the sum of two numbers' do
      calculator = Calculator.new
      expect(calculator.add(5, 2)).to eql(7)
    end

    it 'returns the sum of more than two numbers' do
      calculator = Calculator.new
      expect(calculator.add(2, 5, 7)).to eql(14)
    end
  end

  describe '#subtract' do
    it 'returns the outcome of subtraction of two numbers' do
      calculator = Calculator.new
      expect(calculator.subtract(10, 8)).to eql(2)
    end

    it 'returns the outcome of subtraction of multiple numbers' do
      calculator = Calculator.new
      expect(calculator.subtract(100, 80, 3)).to eql(17)
    end

    it 'returns the outcome of subtraction of multiple numbers' do
      calculator = Calculator.new
      expect(calculator.subtract(25, 50, 25)).to eql(-50)
    end
  end

  describe '#multiply' do
    it 'returns the outcome of multiplication of two numbers' do
      calculator = Calculator.new
      expect(calculator.multiply(6, 2)).to eql(12)
    end

    it 'returns the outcome of multiplication of more than two numbers (positive)' do
      calculator = Calculator.new
      expect(calculator.multiply(3, 5, 6)).to eql(90)
    end

    it 'returns the outcome of multiplication of more than two numbers (negative)' do
      calculator = Calculator.new
      expect(calculator.multiply(3, 5, -6)).to eql(-90)
    end
  end

  describe '#divide' do
    it 'returns the outcome of division of two numbers' do
      calculator = Calculator.new
      expect(calculator.divide(20, 2)).to eql(10.0)
    end

    it 'returns the outcome of division of two numbers (negative)' do
      calculator = Calculator.new
      expect(calculator.divide(10, -100)).to eql(-0.1)
    end
  end

  it 'returns the outcome of division of more than two numbers' do
    calculator = Calculator.new
    expect(calculator.divide(1000, 10, 50)).to eql(2.0)
  end
end
