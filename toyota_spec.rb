require 'rspec'
require_relative 'vehicle'
require_relative 'car'
require_relative 'toyota'

describe "Toyota" do
  it "can be made" do
    expect{Toyota.new 3000}.to_not raise_error
  end

  it "inherits Car class" do
    my_toyota = Toyota.new 3000
    expect(my_toyota.wheels).to eq 4
  end

  it "can honk horn" do
    my_toyota = Toyota.new 3000
    expect(my_toyota.honk_horn).to eq "whoop"
  end

  it "can accelerate by 7km/h" do
    my_toyota = Toyota.new 3000
    expect{my_toyota.accelerate}.to change{my_toyota.speed}.from(my_toyota.speed).to(my_toyota.speed+7)
  end

  it "can brake by 5km/h" do
    my_toyota = Toyota.new 3000
    my_toyota.accelerate
    expect{my_toyota.brake}.to change{my_toyota.speed}.from(my_toyota.speed).to(my_toyota.speed-5)
  end

  it "will return car info" do
    my_toyota = Toyota.new 3000
    expect(my_toyota.info).to be_a String
    expect(my_toyota.info).to eq "All info:\n
    Year: 3000\n
    Wheels: 4\n
    Lights: Off\n
    Speed: 0\n
    Horn: whoop\n
    Signal: Off"
  end

end
