class String
  def clock_angle
    hour_value = self.split(":")[0].to_f()
    minute_value = self.split(":")[1].to_f()
    minute_position = (minute_value/60) * 360
    hour_position = ((hour_value/12) * 360) + ((minute_value/60) * 30)

    if (hour_position - minute_position).abs > 180
      return (360 - (hour_position - minute_position)).abs
    else
      (hour_position - minute_position).abs
    end
  end
end
