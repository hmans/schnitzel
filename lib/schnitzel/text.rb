module Schnitzel
  class Text < Node
    attr_accessor :color

    def initialize(color: 0xffffffff, size: 20, **args)
      super(args)
      @color = color
      @font = Gosu::Font.new($window, Gosu::default_font_name, size)
    end

    def draw
      @font.draw("Woohoo!", position.x, position.y, z, scale.x, scale.y, color)
    end
  end
end
