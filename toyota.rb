class Toyota < Car

  def initialize(year)
    super
    @horn = "whoop"
  end

  def accelerate
    @speed += 7
  end

  def brake
    @speed -= 5
  end
end
