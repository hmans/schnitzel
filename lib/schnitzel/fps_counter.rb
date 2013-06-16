module Schnitzel
  class FpsCounter < Node
    def initialize(interval: 250, **args)
      super(args)
      @interval = interval
      @interval_seconds = @interval / 1000.0
      @frames = 0
      @nexttick = 0

      @text = Text.new(position: [10, 456], color: 0xccddffdd, size: 14)
      self << @text
    end

    def update(dt)
      # Increment frame counter
      @frames += 1

      # If a second has passed, update text.
      if Gosu::milliseconds >= @nexttick
        @nexttick += @interval
        fps = @frames / @interval_seconds
        @text.text = "FPS: #{fps}"
        @frames = 0
      end
    end
  end
end
