require 'rspec'
require_relative 'vehicle'
require_relative 'car'
require_relative 'tata'

describe "Tata" do
  it "can be made" do
    expect{Tata.new 2000}.to_not raise_error
  end

  it "can inherit car" do
    my_tata = Tata.new 2000
    expect(my_tata.wheels).to eq 4
  end

  it "can honk horn" do
    my_tata = Tata.new 2000
    expect(my_tata.honk_horn).to eq "beep"
  end

  it "can accelerate by 2km/h" do
    my_tata = Tata.new 2000
    expect{my_tata.accelerate}.to change{my_tata.speed}.from(my_tata.speed).to(my_tata.speed+2)
  end

  it "can brake by 1.25km/h" do
    my_tata = Tata.new 2000
    my_tata.accelerate
    expect{my_tata.brake}.to change{my_tata.speed}.from(my_tata.speed).to(my_tata.speed-1.25)
  end

  it "can brake exactly by 1.25km/h" do
    my_tata = Tata.new 2000
    my_tata.brake
    expect(my_tata.speed).to eq -1.25
  end

  it "will return car info" do
    my_tata = Tata.new 2000
    expect(my_tata.info).to be_a String
    expect(my_tata.info).to eq "All info:\n
    Year: 2000\n
    Wheels: 4\n
    Lights: Off\n
    Speed: 0\n
    Horn: beep\n
    Signal: Off"
  end

end
