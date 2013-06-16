class Hmans < Schnitzel::Actor
  def initialize
   @hmans = Gosu::Image.new($window, "assets/images/hmans.jpg", true)
   @angle = 0.0
  end

  def update(dt)
    @angle += 90.0 * dt
  end

  def draw
    @hmans.draw_rot 320, 240, 0, @angle
  end
end
