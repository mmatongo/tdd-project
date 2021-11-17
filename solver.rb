class Solver
  def factorial(num)
    raise StandardError, 'Number should be greater than zero' if num.negative?

    num.to_i
    result = 1
    while num.positive?
      result *= num
      num -= 1
    end
    result
  end

  def reverse_word(word)
    word.reverse
  end

  def fizzbuzz(num)
    if (num % 3).zero? && (num % 5).zero?
      'fizzbuzz'
    elsif (num % 3).zero?
      'fizz'
    elsif (num % 5).zero?
      'buzz'
    else
      num.to_s
    end
  end
end
