# Monkeypatch array to support #x and #y. Wheee!
#
class Array
  def x
    self[0]
  end

  def y
    self[1]
  end
end
