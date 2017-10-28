require 'hero'

class GoodGuy < Hero

  def initialize(name, nickname, strength)
    super
    @skill = %w[extra_life double_hit retreat].sample
  end

  def receive_hit(with_strength)
    @vitality -= with_strength
  end

  def fight(opponent)
    hit(opponent)
    fight(opponent) if @vitality > 0 && opponent.vitality > 0
  end

end