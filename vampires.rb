class Vampire
@@coven = []

def initialize(name,age)
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
 end

 def self.create(name,age)
   vampire = Vampire.new(name,age)
   @@coven << vampire
 end

 def self.drink_blood
 end

 def self.sunrise
 end

 def self.sunset
 end

 def self.go_home
 end

 def coven
   @@coven
 end

end

puts Vampire.create("navi",8)

puts coven
