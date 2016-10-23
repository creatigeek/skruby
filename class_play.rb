class Pet
  attr_accessor :name, :age
end

class Cat < Pet
  def mrow
    return "Mrow!!"
  end
end

class Dragon < Pet
  def rawr
    return "rawr!"
  end
end

my_cat_cayce = Cat.new
my_cat_hiro = Cat.new
my_dragon = Dragon.new

my_cat_cayce.name = "Cat1"
my_cat_cayce.age = 12

my_cat_hiro.name = "Cat2"
my_cat_hiro.age = 6

my_dragon.name = "Dragon"
my_dragon.age = 30

puts "My cat #{my_cat_cayce.name} is #{my_cat_cayce.age} and says #{my_cat_cayce.mrow}."
puts "My cat #{my_cat_hiro.name} is #{my_cat_hiro.age} and says #{my_cat_hiro.mrow}."
puts "My dragon #{my_dragon.name} is #{my_dragon.age} and says #{my_dragon.rawr}"
