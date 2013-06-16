module Schnitzel
  class Sprite < Node
    def initialize(file: nil, **args)
      super(args)
      @image = Gosu::Image.new($window, file, true)
    end

    def update
    end

    def draw
      @image.draw_rot position.x + parent_position.x, position.y + parent_position.y,
        z,
        rotation + parent_rotation,
        anchor.x, anchor.y,
        scale.x * parent_scale.x, scale.y * parent_scale.y
    end

    def parent_position
      @parent_position ||= parent ? parent.position : [0.0, 0.0]
    end

    def parent_rotation
      @parent_rotation ||= parent ? parent.rotation : 0.0
    end

    def parent_scale
      @parent_scale ||= parent ? parent.scale : [1.0, 1.0]
    end
  end
end
