require 'rspec'
require_relative 'vehicle'

describe "Vehicle" do
  it "can be made" do
    expect {Vehicle.new 1989}.to_not raise_error
  end

  it "has model year" do
    my_vehicle = Vehicle.new 1989
    expect(my_vehicle.year).to be_a Numeric
  end

  it "can turn on and off the lights" do
    my_vehicle = Vehicle.new 1989
    expect(my_vehicle.lights).to eq "Off"
    my_vehicle.lights_to
    expect(my_vehicle.lights).to eq "On"
  end

  it "can signal left and right" do
    my_vehicle = Vehicle.new 1989
    expect(my_vehicle.signal).to eq "Off"
    my_vehicle.signal_to = "Right"
    expect(my_vehicle.signal).to eq "Right"
    my_vehicle.signal_to = "Left"
    expect(my_vehicle.signal).to eq "Left"
  end
end
