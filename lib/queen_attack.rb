class Array
  def queen_attack?(coordinates)
    from_x = self[0]
    from_y = self[1]
    to_x = coordinates[0]
    to_y = coordinates[1]
    diff_x = (from_x - to_x).abs
    diff_y = (from_y - to_y).abs
    (diff_y.eql?(0) & !diff_x.eql?(0)) | (diff_x.eql?(0) & !diff_y.eql?(0)) | diff_x.eql?(diff_y)
  end
end
