# Enter your object-oriented solution here!

class Multiples
  attr_reader :limit

  def initialize(limit)
    @limit = 1.upto(limit - 1)
  end

  def collect_multiples
    limit.select{ |n|n % 3 == 0 || n % 5 == 0 }
  end

  def sum_multiples
    collect_multiples.reduce(:+)
  end

end
