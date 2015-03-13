
require './item'
require './weapon'
require './plasma_cannon'
class Robot 

attr_reader :position, :items, :health
attr_accessor :equipped_weapon

  def initialize 
    @position = [0, 0]
    @items = []
    @health = 100
    @equipped_weapon = nil
  end

  def move_left
    @position[0]-=1
  end

  def move_right
    @position[0]+=1
  end

  def move_up
    @position[1]+=1
  end

  def move_down
    @position[1]-=1
  end

  def pick_up(item)

    if (items_weight + item.weight) <= 250
      @equipped_weapon = item if item.is_a? Weapon
      @items << item
    end
  end

  def items_weight
    @items.inject(0) { |sum, item | sum + item.weight }
  end

  def wound(points)
    @health -= points
    @health = 0 if @health < 0
  end

  def heal(points)
    @health += points
    @health = 100 if health > 100
  end

  def attack(other_robot)
    if equipped_weapon
      equipped_weapon.hit(other_robot)
    else
    other_robot.wound(5)
    end
  end

  def heal!
    raise "Sorry, you're dead" if @health <=0
 
    
  end
    
end



@robot = Robot.new
@robot2 = Robot.new

 @weapon = PlasmaCannon.new
 p  @robot.pick_up(@weapon)
 @robot.attack(@robot2)
 @robot.attack(@robot2)
 p  @robot.items_weight
 p  @robot2.heal!