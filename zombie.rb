class Zombie
@@horde = [] # contain the collection of all zombies
@@plague_level = 10 # will increase over time
@@max_speed = 5 # speed attribute of zombies, will not change
@max_strength = 8 # max_strength attribute of any zombie
@@default_speed = 1 # value will not change
@@default_strength = 3 # value will not change

  def self.all
    @@horde
  end

  def self.new_day
  end

  def self.some_die_off
  end

  def self.spawn
    rand(@@plague_level).times do
      speed = rand(@@max_speed)
      strength = rand(@@max_strength)
      @@horde << Zombie.new(speed,strength)
    end
  end

  def self.increase_plague_level
  end

  def initialize(speed,strength)
    if speed < @@max_speed
      @@default_speed
    else @zombie_speed = speed
    end
    if strength < @@max_strength
      @@default_strength
    else @zombie_strength = strength
    end
  end

  def encounter
  end

  def outrun_zombie?
  end

  def survive_attack?
  end

end
