
class Hero
  attr_accessor vitality

  def initialize(name, nick_name, strength)
    @name = name
    @nick_name = nick_name
    @strength = strength
    @vitality = 100
  end

  def hit(opponent)
    hit_with_strength = @strength * rand(1..6)
    opponent.receive_hit(hit_with_strength, self)
  end

  def receive_hit(*args)
    raise 'This is abstract method'
  end

end