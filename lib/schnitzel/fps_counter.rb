module Schnitzel
  class FpsCounter < Node
    def setup
      @text = Text.new(position: [10, 456], color: 0xccffffff, size: 14)
      self << @text
    end

    def update(dt)
      fps = (1.0 / dt).round
      @text.text = "FPS: #{fps}"
    end
  end
end
