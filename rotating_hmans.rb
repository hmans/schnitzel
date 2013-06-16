#!/usr/bin/env ruby

# Load all the crazy stuff we need.
require 'bundler/setup'
Bundler.require
$:.unshift File.join(File.dirname(__FILE__), '/lib')
require 'schnitzel'



class Hmans < Schnitzel::Node
  def setup
    @sprite = Schnitzel::Sprite.new file: "assets/images/hmans.jpg"
    self << @sprite
  end

  def update(dt)
    @sprite.rotation += 90.0 * dt
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
