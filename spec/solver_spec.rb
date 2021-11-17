require_relative 'helper_spec'

describe 'Solver' do
  before :each do
    @solver = Solver.new
  end

  describe '#factorial' do
    context 'when given a number' do
      it 'return 1 when N == 0' do
        result = @solver.factorial(0)
        expect(result).to eq(1)
      end

      it 'negative numbers' do
        expect { @solver.factorial(-1) }.to raise_exception an_instance_of(StandardError)
          .and(having_attributes({ 'message' => 'Number should be greater than zero' }))
      end

      it 'returns the factorial of N' do
        result = @solver.factorial(3)
        expect(result).to eq(6)
      end
    end
  end

  describe '#reverse word' do
    context 'when given a word' do
      it 'returns hello reversed' do
        result = @solver.reverse_word('hello')
        expect(result).to eql('olleh')
      end
      it 'returns tito reversed' do
        result = @solver.reverse_word('tito')
        expect(result).to eql('otit')
      end
    end
  end

  describe '#fizzbuzz' do
    context 'when given a number' do
      it 'When N is divisible by 3, return "fizz"' do
        result = @solver.fizzbuzz(3)
        expect(result).to eq 'fizz'
      end
      it 'When N is divisible by 5, return "buzz"' do
        result = @solver.fizzbuzz(5)
        expect(result).to eq 'buzz'
      end
      it 'When N is divisible by 3 & 5, return "fizzbuzz"' do
        result = @solver.fizzbuzz(15)
        expect(result).to eq 'fizzbuzz'
      end
      it 'When N is not divisible by 3 or 5, return "N"' do
        result = @solver.fizzbuzz(7)
        expect(result).to eq '7'
      end
    end
  end
end
