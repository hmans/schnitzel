#!/usr/bin/env ruby
$:.unshift File.join(File.dirname(__FILE__), '/lib')

require 'bundler/setup'
Bundler.require

require 'schnitzel'
require './game/actors/hmans.rb'

class MyGame < Schnitzel::Game
  def setup
    enable_pixels
    self.title = "wat?"
    self << Hmans.new(position: [320, 240], scale: [2.0, 2.0])
  end
end

MyGame.run!
