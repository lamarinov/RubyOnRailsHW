
require 'hero'

class BadGuy < Hero
  def receive_hit(with_strength, opponent)
    @vitality -= with_strength
    hit(opponent)
  end
end