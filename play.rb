class Parent
  public
  def name
    'Mommy'
  end
end

class Child < Parent
  def get_parent_name
    # Implicit receiver
    puts name

    # Explicit receiver
    puts self.name rescue puts 'NoMethodError'

    # Explicit receiver
    puts Parent.new.name rescue puts 'NoMethodError'
  end
end

Child.new.get_parent_name