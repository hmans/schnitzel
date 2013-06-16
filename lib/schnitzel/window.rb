module Schnitzel
  class Window < Gosu::Window
    def update
      $game.update
    end

    def draw
      $game.draw
    end
  end
end
