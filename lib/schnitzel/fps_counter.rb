module Schnitzel
  class FpsCounter < Node
    def initialize(**args)
      super(args)
      @text = Text.new(position: [10, 456], color: 0xccddffdd, size: 14)
      self << @text
    end

    def update(dt)
      @text.text = "FPS: #{Gosu::fps}"
    end
  end
end
