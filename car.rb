class Car < Vehicle
  def initialize(year)
    super
    @wheels = 4
    @horn = "BEEP!"
    @speed = 0
  end

  def wheels
    @wheels
  end

  def honk_horn
    @horn
  end

  def speed
    @speed
  end

  def info
    "All info:\n
    Year: #{@year}\n
    Wheels: #{@wheels}\n
    Lights: #{@lights}\n
    Speed: #{@speed}\n
    Horn: #{@horn}\n
    Signal: #{@signal}"
  end

end
