class NumberGuesser
  def initialize
    @guess = 50
  end

  def guess
    @guess
  end

  def lower
    @guess -= 1
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
