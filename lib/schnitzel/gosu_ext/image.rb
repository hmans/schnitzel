class Gosu::Image
  def self.from_file(name, tileable: true)
    @image_cache ||= {}
    @image_cache[name] ||= Gosu::Image.new($window, name, tileable)
  end
end
