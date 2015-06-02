require_relative '../lib/dice.rb'

RSpec.describe Dice do
  it 'has sides' do
    d20 = Dice.new(20)
    expect(d20.sides).to eq(20)
  end

  describe '#roll' do
    it 'a 4 sided die should return a random number between 1 and 4' do
      d4 = Dice.new(4)
      rolls = Array.new

      1_000_000.times do
        rolls << d4.roll
      end

      expect(rolls.uniq.sort).to eq([1, 2, 3, 4])
    end

    it 'a 20 sided should return random number btw 1 and 20' do
      d20 = Dice.new(20)
      rolls = Array.new

      1_000_000.times do
        rolls << d20.roll
      end

      expect(rolls.uniq.sort).to eq((1..20).to_a)
    end

  end

end
