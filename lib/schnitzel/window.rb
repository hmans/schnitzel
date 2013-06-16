module Schnitzel
  class Window < Gosu::Window
    def update
      $game.update
    end

    def draw
      $game.draw
    end

    def button_down(id)
      case id
      when Gosu::KbEscape
        close
      end
    end
  end
end
