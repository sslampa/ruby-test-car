require 'rspec'
require_relative 'vehicle'
require_relative 'car'
require_relative 'tesla'

describe "Tesla" do
  it "can be made" do
    expect{Tesla.new 1989}.to_not raise_error
  end

  it "can inherit car" do
    my_tesla = Tesla.new 1989
    expect(my_tesla.wheels).to eq 4
  end

  it "can honk horn" do
    my_tesla = Tesla.new 1989
    expect(my_tesla.honk_horn).to eq "Beep-bee-bee-boop-bee-doo-weep"
  end

  it "can accelerate by 10km/h" do
    my_tesla = Tesla.new 1989
    expect{my_tesla.accelerate}.to change{my_tesla.speed}.from(my_tesla.speed).to(my_tesla.speed+10)
  end

  it "can brake by 7km/h" do
    my_tesla = Tesla.new 1989
    my_tesla.accelerate
    expect{my_tesla.brake}.to change{my_tesla.speed}.from(my_tesla.speed).to(my_tesla.speed-7)
  end

  it "will return car info" do
    my_tesla = Tesla.new 1989
    expect(my_tesla.info).to be_a String
    expect(my_tesla.info).to eq "All info:\n
    Year: 1989\n
    Wheels: 4\n
    Lights: Off\n
    Speed: 0\n
    Horn: Beep-bee-bee-boop-bee-doo-weep\n
    Signal: Off"
  end

end
