module Schnitzel
  class Sprite < Node
    def initialize(file: nil, **args)
      super(args)
      @image = Gosu::Image.from_file(file)
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
