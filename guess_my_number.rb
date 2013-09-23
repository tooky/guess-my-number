class NumberGuesser
  def initialize
    @max = 100
    @min = 0
  end

  def guess
    midpoint
  end

  def lower
    @max = guess - 1
  end

  def higher
    @min = guess + 1
  end

  private
  def midpoint
    @min + half_the_difference
  end

  def half_the_difference
    (@max - @min) / 2
  end
end

def guess_my_number
  @guesser = NumberGuesser.new
  @guesser.guess
end

def higher
  @guesser.higher
  @guesser.guess
end

def lower
  @guesser.lower
  @guesser.guess
end
