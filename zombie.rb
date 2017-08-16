class Zombie
@@horde = [] # contain the collection of all zombies
@@plague_level = 10 # will increase over time
@@max_speed = 5 # speed attribute of zombies, will not change
@@max_strength = 8 # max_strength attribute of any zombie
@@default_speed = 1 # value will not change
@@default_strength = 3 # value will not change

  def self.all
    @@horde
  end

  def self.new_day
    some_die_off
    spawn
    increase_plague_level
  end

  def self.some_die_off
    @@horde.drop rand(0..10)
    return @@horde
  end

  def self.spawn
    rand(@@plague_level).times do
      speed = rand(@@max_speed)
      strength = rand(@@max_strength)
     @@horde << Zombie.new(speed,strength)
    end

  end

  def self.increase_plague_level
    @@plague_level += rand(0..2)
    return @@plague_level
  end

  def initialize(speed,strength)
    if speed > @@max_speed
      @zombie_speed = @@default_speed
    else
      @zombie_speed = speed
    end
    if strength < @@max_strength
      @zombie_strength = @@default_strength
    else
      @zombie_strength = strength
    end
  end

  def encounter
    if outrun_zombie? == "true"
      puts "you have outrand the zombie!"
    else
      puts "oh no you did not out run the zombie! you are now a zombie!"
      speed = rand(@@max_speed)
      strength = rand(@@max_strength)
      @@horde << Zombie.new(speed,strength)
    end
    if survive_attack? == "true"
      puts "you survived a zombie attack!!!"
    else
      puts "oh no! the zombie was too strong and he ate your brains!"
    end
  end

  def outrun_zombie?
    @zombie_speed < rand(@@max_speed)
  end

  def survive_attack?
    @zombie_strength < rand(@@max_strength)
  end

end

puts Zombie.all.inspect
Zombie.new_day
Zombie.new_day
Zombie.new_day
Zombie.new_day
puts Zombie.all.inspect
zombie1 = Zombie.all[0]
zombie2 = Zombie.all[1]
zombie3 = Zombie.all[2]
puts zombie1.encounter
puts zombie2.encounter
puts zombie3.encounter
Zombie.new_day
