class Hmans < Schnitzel::Actor
  def setup
    @sprite = Schnitzel::Sprite.new file: "assets/images/hmans.jpg"
    self << @sprite
  end

  def update(dt)
    @sprite.rotation += 90.0 * dt
  end
end
