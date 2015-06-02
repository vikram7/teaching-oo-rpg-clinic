require_relative '../lib/character.rb'

RSpec.describe Character do

  let (:character) { character = Character.new("Gandalf", "Wizard", "Special Being Angel")}

  it 'has a name' do
    expect(character.name).to eq("Gandalf")
  end

  it 'has a role' do
    expect(character.role).to eq("Wizard")
  end

  it 'has a race' do
    expect(character.race).to eq("Special Being Angel")
  end

  it 'has hit_points' do
    expect(character.hit_points).to eq(50)
  end

  it 'has a strength > 0' do
    expect(character.strength).to be > 0
  end

  it 'has a constitution > 0' do
    expect(character.constitution).to be > 0
  end

  describe '#alive?' do
    it 'returns true if hit_points > 0' do
      alive_character = Character.new("Gandalf", "Wizard", "Special Being Angel", 15)
      expect(alive_character.alive?).to eq(true)
    end

    it 'returns false if hit_points <= 0' do
      super_dead_character = Character.new("Gandalf", "Wizard", "Special Being Angel", -15)
      expect(super_dead_character.alive?).to eq(false)
    end
  end

  describe '#attack!' do
    it 'character 1 attacks character 2 and reduces character 2\'s hit points' do
      character_1 = Character.new("Elmo","Barbarian","Muppet")
      character_2 = Character.new("Big Bird", "Bard", "A Large Bird")
      character_2_hit_points = character_2.hit_points

      expect(character_1.attack!(character_2)).to eq(character_2_hit_points - character_1.strength / 4)
    end
  end

end
