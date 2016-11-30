class Garage
  def initialize
    @garage = []
  end

  def store(car)
    @garage << car
  end

  def retrieve
    @garage
  end

  def sort_by_year(ascending)
    if ascending
      @garage.sort do |a, b|
        a.year <=> b.year
      end
    else
      @garage.sort do |a, b|
        b.year <=> a.year
      end
    end
  end

  def sort_by_model(ascending)
    if ascending
      @garage.sort do |a, b|
        a.class.to_s <=> b.class.to_s
      end
    else
      @garage.sort do |a, b|
        b.class.to_s <=> a.class.to_s
      end
    end
  end

  def sort_by_model_then_year(ascending)
    if ascending
      @garage.sort do |a, b|
        [a.class.to_s, a.year] <=> [b.class.to_s, b.year]
      end
    else
      @garage.sort do |a, b|
        [b.class.to_s, b.year] <=> [a.class.to_s, a.year]
      end
    end
  end

end
