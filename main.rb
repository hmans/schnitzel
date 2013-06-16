#!/usr/bin/env ruby
$:.unshift File.join(File.dirname(__FILE__), '/lib')

require 'bundler/setup'
Bundler.require

require 'schnitzel'
require './game/nodes/hmans.rb'
require './game/scenes/title_scene.rb'

class MyGame < Schnitzel::Game
  def setup
    enable_pixels
    self.title = "wat?"
  end
end

MyGame.new.run! TitleScene.new
