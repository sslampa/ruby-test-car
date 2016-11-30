class Vehicle
  def initialize(year)
    @year = year
    @lights = "Off"
    @signal = "Off"
  end

  def year
    @year
  end

  def lights_to
    (@lights == "Off") ? @lights = "On" : @lights = "Off"
  end

  def lights
    @lights
  end

  def signal_to=(signal)
    @signal = signal
  end

  def signal
    @signal
  end

end
