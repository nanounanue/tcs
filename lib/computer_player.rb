require './lib/player'

class ComputerPlayer < Player
  WEAPONS = [
    :energy_weapon,
    :laser,
    :meson_gun,
    :missile,
    :particle_acc,
    :repulsor,
    :sand
    ]
  
  def initialize(range_pref=:long)
    @range_pref = range_pref
  end  
  
  def assign_batteries(fleet, ship)
    # Returns an array
    batteries = []
    counter -= 1
    batteries
  end
  
  def assign_damage(choices)
    rand(choices.length)
  end
  
  def assign_defenses(ship, hits)
    # Returns a 2d array, with length equal to hits
  end
  
  def assign_to_battle_line?(ship)
    ship.can_fire?
  end
  
  def begin_combat_step
    @counter = enemy.ships.length
  end
  
  def choose_range
    @range = @range_pref
    @range_pref
  end
  
  def see_range(range)
    @range = range
  end
  
  def select_repair(choices)
    if choices.any? { |choice| WEAPONS.include?(choice) }
      choices.index { |choice| WEAPONS.include?(choice) }
    else
      0
    end
  end
  
  private 
  def can_damage?(battery, ship)
  end
  
  def can_hit?(battery, ship)
    battery.to_hit(ship, @range) <= 12
  end
end