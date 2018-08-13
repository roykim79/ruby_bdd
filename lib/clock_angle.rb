class String
  def clock_angle
    hour_value = split(":")[0].to_f()
    minute_value = split(":")[1].to_f()
    hour_position = (hour_value/12 * 360) + (minute_value/60 * 30)
    minute_position = minute_value/60 * 360
    clock_angle = (hour_position - minute_position).abs
    if clock_angle > 180
      clock_angle =  360 - clock_angle
    end
    clock_angle
  end
end
