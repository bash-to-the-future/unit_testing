require "rspec"

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end

  def pie(placement=3)
    Math::PI.round(placement)
  end

  def square_root(number)
    Math.sqrt(number)
  end

  def pythagorean_theorem(first_side, second_side)
    square_root(square(first_side) + square(second_side))
  end
end

RSpec.describe Calculator do
  describe '#add' do
    it 'should return the sum of two numbers' do
      calculator = Calculator.new
      expect(calculator.add(2,3)).to eq(5)
    end

    it 'should return a negative number if given two negative numbers' do 
      calculator = Calculator.new
      expect(calculator.add(-1,-4)).to eq(-5)
    end
  end

  describe '#subtract' do 
    it 'should return the difference between two numbers' do 
      calculator = Calculator.new
      expect(calculator.subtract(7,2)).to eq(5)
    end
  end

  describe '#multiply' do 
    it 'should return the product of two numbers' do 
      calculator = Calculator.new
      expect(calculator.multiply(2,6)).to eq(12)
    end
  end

  describe '#divide' do 
    it 'should return the quotient of two numbers' do 
      calculator = Calculator.new
      expect(calculator.divide(9,3)).to eq(3)
    end
  end

  describe '#square' do 
    it 'should return the product of a number times itself' do 
      calculator = Calculator.new
      expect(calculator.square(5)).to eq(25)
    end
  end

  describe '#power' do 
    it 'should return the product of a number times itself, the second given number of times' do 
      calculator = Calculator.new
      expect(calculator.power(5,3)).to eq(125)
    end
  end

  describe '#pie' do 
    it 'should return pi to four digits' do 
      calculator = Calculator.new
      expect(calculator.pie).to eq(3.142)
    end

    context 'if given a number' do 
      it 'this should return pi to the number of digits right of the decimal point' do 
        calculator = Calculator.new
        expect(calculator.pie(5)).to eq(3.14159)
        expect(calculator.pie(1)).to eq(3.1)
        expect(calculator.pie(8)).to eq(3.14159265)
      end
    end
  end

  describe '#square_root' do 
    it 'should return the square root of a given number' do 
      calculator = Calculator.new
      expect(calculator.square_root(25)).to eq(5)
    end
  end

  describe '#pythagorean_theorem' do 
    it 'should return the hypotenuse given two sides of a right triangle' do 
      calculator = Calculator.new
      expect(calculator.pythagorean_theorem(3,4)).to eq(5)
    end
  end
end