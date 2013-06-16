#!/usr/bin/env ruby
require 'bundler/setup'
Bundler.require

class Hmans < Schnitzel::Node
  def setup
    @sprite = Schnitzel::Sprite.new file: File.join(__FILE__, '../assets/images/hmans.jpg')
    @font = Gosu::Font.new($window, Gosu::default_font_name, 20)
    self << @sprite
  end

  def update(dt)
    super
    @sprite.rotation += 90.0 * dt
  end

  def draw
    super
    @font.draw("Woohoo!", 10, 10, 666, 1.0, 1.0, 0xccffffff)
  end
end

class TitleScene < Schnitzel::Scene
  def setup
    self << Hmans.new(position: [320, 240], scale: [2.0, 2.0])
  end
end

class MyGame < Schnitzel::Game
  def setup
    enable_pixels
    self.title = "wat?"
  end
end

MyGame.new.run! TitleScene.new
