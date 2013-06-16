#!/usr/bin/env ruby
$:.unshift File.join(File.dirname(__FILE__), '/lib')

require 'bundler/setup'
Bundler.require

require 'schnitzel'

Dir["#{File.dirname(__FILE__)}/game/**/*.rb"].each { |f| require f }

class MyGame < Schnitzel::Game
  def setup
    enable_pixels
    self.title = "wat?"
  end
end

MyGame.new.run! TitleScene.new
