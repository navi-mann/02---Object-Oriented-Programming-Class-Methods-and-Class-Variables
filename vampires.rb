class Vampire
@@coven = []

def initialize(name,age,in_coffin,drank_blood_today)
  @name = name
  @age = 0
  if @in_coffin == true
    true
  else
    false
  end
  if @drank_blood_today == true
    true
  else
   false
 end

 def self.create
   Vampire.new(initialize)
 end

 def self.drink_blood
 end

 def self.sunrise
 end

 def self.sunset
 end

 def self.go_home
 end

end
