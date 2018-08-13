class String
  def clock_angle
    hour_value = self.split(":")[0].to_f()
    minute_value = self.split(":")[1].to_f()
    hour_position = (12 - hour_value)/12 * 360
    minute_position = (minute_value/60) * 360

    if (hour_position - minute_position) > 180
      return 360 - (hour_position - minute_position)
    else
      hour_position - minute_position
    end
  end
end
