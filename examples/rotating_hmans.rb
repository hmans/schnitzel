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
    self << Schnitzel::ShadowedText.new(text: "ZOMG!", position: [200, 10],
      font: File.join(__FILE__, '../assets/fonts/04b-19.suit'),
      color: 0xffffffff, shadowcolor: 0xff000000, size: 100)
    self << Schnitzel::FpsCounter.new
  end
end

class MyGame < Schnitzel::Game
  def setup
    enable_pixels
    self.title = "wat?"
  end
end

MyGame.new.run! TitleScene.new
