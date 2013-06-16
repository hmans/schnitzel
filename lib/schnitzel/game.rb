module Schnitzel
  class Game
    def initialize
      # Store a reference to this game window in a global variable.
      # Stop frowning, this is probably the only game running in the
      # process. :-)
      #
      $window = Schnitzel::Window.new(640, 480, false)
      #$window.caption = "Untitled Game"

      # Also, remember a reference to the game.
      #
      $game = self

      # The current scene.
      #
      @scene = nil

      # Invoke setup method.
      #
      setup
    end

    def title=(v)
      $window.caption = v
    end

    def setup
    end

    def enable_pixels
      Gosu::enable_undocumented_retrofication
    end

    def run!(scene)
      @scene = scene
      @lasttick = Gosu::milliseconds
      $window.show
    end

    def update
      newtick = Gosu::milliseconds
      delta = (newtick - @lasttick) / 1000.0
      @scene.update(delta) if @scene
      @lasttick = newtick
    end

    def draw
      @scene.draw if @scene
    end
  end
end
