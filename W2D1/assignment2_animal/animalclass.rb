class Animal
attr_accessor :name, :num_legs
@@animal_count = 0
def initialize(name, num_legs)
  @@animal_count += 1
end
class Mammal < Animal; end
class Birds < Animal; end
class Amphibian < Animal; end
end

Dragon = Animal.new("Dragon", 2)
puts @@animal_count