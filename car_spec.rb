require 'rspec'
require_relative 'car'

describe "Car" do
  it "can be made" do
    expect{Car.new 1950}.to_not raise_error
  end

  it "has 4 wheels" do
    my_car = Car.new 1950
    expect(my_car.wheels).to eq 4
  end

  it "can honk the horn" do
    my_car = Car.new 1950
    expect(my_car.honk_horn).to eq "BEEP!"
  end

  it "can check speed" do
    my_car = Car.new 1950
    expect(my_car.speed).to eq 0
  end
end
