module Schnitzel
  class Text < Node
    attr_accessor :color, :text

    def initialize(text: "", color: 0xffffffff, size: 20, **args)
      super(args)
      @text = text
      @color = color
      @font = Gosu::Font.new($window, Gosu::default_font_name, size)
    end

    def draw
      @font.draw(text, position.x, position.y, z, scale.x, scale.y, color)
    end
  end
end
