module Schnitzel
  class Sprite < Node
    def initialize(file: nil, **args)
      super(args)
      @image = Gosu::Image.new($window, file, true)
    end

    def update
    end

    def draw
      @image.draw_rot position.x, position.y,
        z,
        rotation,
        anchor.x, anchor.y,
        scale.x, scale.y
    end
  end
end
