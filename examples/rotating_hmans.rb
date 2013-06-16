#!/usr/bin/env ruby
require 'bundler/setup'
Bundler.require

class Hmans < Schnitzel::Node
  def setup
    @sprite = Schnitzel::Sprite.new file: File.join(__FILE__, '../assets/images/hmans.jpg')
    self << @sprite
  end

  def update(dt)
    @sprite.rotation += 90.0 * dt
  end
end

class TitleScene < Schnitzel::Scene
  def setup
    self << Hmans.new(position: [320, 240], scale: [2.0, 2.0])
    self << Schnitzel::Text.new(position: [10, 10], color: 0xccffffff, size: 50)
  end
end

class MyGame < Schnitzel::Game
  def setup
    enable_pixels
    self.title = "wat?"
  end
end

MyGame.new.run! TitleScene.new
