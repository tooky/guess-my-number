require_relative 'guess_my_number'

describe NumberGuesser do
  let(:player) { NumberGuesser.new }

  it 'makes an initial guess between 1 and 100' do
    expect(guess).to be <= 100
    expect(guess).to be >= 1
  end

  it 'will guess lower' do
    first_guess = player.guess
    player.lower
    expect(guess).to be < first_guess
  end

  it 'will guess higher' do
    first_guess = player.guess
    player.higher
    expect(guess).to be > first_guess
  end

  it 'guesses all the way down to 1 efficiently' do
    expect_to_guess_until(1)
  end

  it 'guesses all the way up to 100 efficiently' do
    expect_to_guess_until(100)
  end

  it 'guesses 37' do
    expect_to_guess_until(37)
  end

  it 'guesses 99' do
    expect_to_guess_until(99)
  end

  it 'guesses 2' do
    expect_to_guess_until(2)
  end

  def expect_to_guess_until(number)
    guesses = 0
    until guess == number
      raise "too many guesses, you got to: #{guess}" if guesses > 10
      if guess < number
        player.higher
      else
        player.lower
      end
      guesses += 1
    end
    expect(guess).to eq(number)
  end

  def guess
    player.guess
  end
end
