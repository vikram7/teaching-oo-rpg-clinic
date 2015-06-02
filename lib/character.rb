require_relative 'dice.rb'
require 'pry'

class Character
  def initialize(name, role, race, hit_points = 50)
    @name = name
    @role = role
    @race = race
    @hit_points = hit_points
    @strength = Dice.new(20).roll
    @constitution = Dice.new(20).roll
  end

  def name
    @name
  end

  def role
    @role
  end

  def race
    @race
  end

  def hit_points
    @hit_points
  end

  def strength
    @strength
  end

  def constitution
    @constitution
  end

  def alive?
    hit_points > 0
  end

  def attack!(defender)
    hit_points = defender.hit_points
    hit_points = hit_points - self.strength / 4
  end

end
