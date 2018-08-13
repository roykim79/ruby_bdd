class Array
  def queen_attack?(coordinates)
    from_x = self[0]
    from_y = self[1]
    to_x = coordinates[0]
    to_y = coordinates[1]

    if ((to_y - from_y) == 0) & ((to_x - from_x).abs > 0)
      true
    elsif ((to_x - from_x) == 0) & ((to_y- from_y).abs > 0)
      true
    elsif ((to_x - from_x).abs == (to_y- from_y).abs)
      true
    else
      false
    end
  end
end
