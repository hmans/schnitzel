class TitleScene < Schnitzel::Scene
  def setup
    self << Hmans.new(position: [320, 240], scale: [2.0, 2.0])
  end
end
