class Dice
  def initialize(sides)
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    1 + rand(@sides)
  end
end
