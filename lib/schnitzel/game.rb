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

      # Create some stuff for later.
      #
      @children = []

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

    def run!
      @lasttick = Gosu::milliseconds
      $window.show
    end

    def <<(child)
      @children << child
    end

    def update
      newtick = Gosu::milliseconds
      delta = (@lasttick - newtick) / 1000.0
      @children.each { |c| c.update(delta) }
      @lasttick = newtick
    end

    def draw
      @children.each { |c| c.draw }
    end

    class << self
      def run!
        self.new.run!
      end
    end
  end
end
