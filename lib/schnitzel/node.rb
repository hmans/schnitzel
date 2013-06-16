module Schnitzel
  class Node
    attr_accessor :position, :z, :rotation, :anchor, :scale,
      :children, :parent

    def initialize(position: [0.0, 0.0], z: 0, rotation: 0.0, anchor: [0.5, 0.5], scale: [1.0, 1.0])
      @position = position
      @z = z
      @rotation = rotation
      @anchor = anchor
      @scale = scale

      @parent = nil
      @children = []

      setup
    end

    def <<(child)
      child.parent = self
      @children << child
    end

    def setup
    end

    def update(dt)
      @children.each { |c| c.update(dt) }
    end

    def draw
      $window.translate(position.x, position.y) do
        $window.scale(scale.x, scale.y) do
          $window.rotate(rotation) do   # probably buggy
            @children.each { |c| c.draw }
          end
        end
      end
    end
  end
end
