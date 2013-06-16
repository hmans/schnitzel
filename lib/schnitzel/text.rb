module Schnitzel
  class Text < Node
    attr_accessor :color, :text

    def initialize(text: "", font: Gosu::default_font_name, color: 0xffffffff, size: 20, **args)
      super(args)
      @text = text
      @color = color
      @font = Gosu::Font.new($window, font, size)
    end

    def draw
      @font.draw(text, position.x, position.y, z, scale.x, scale.y, color)
    end
  end
end
