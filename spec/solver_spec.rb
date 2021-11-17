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
        expect { @solver.factorial(-1) }.to raise_exception
      end

      it 'returns the factorial of N' do
        result = @solver.factorial(3)
        expect(result).to eq(6)
      end
    end
  end
end
