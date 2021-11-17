class Solver
  def factorial num
    raise StandardError, 'Number should be greater than zero' if num.negative?
    num.to_i
    result = 1
    while num.positive?
      result *= num
      num -= 1
    end
    result
  end
end