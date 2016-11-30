require 'rspec'
require_relative 'vehicle'
require_relative 'car'
require_relative 'toyota'
require_relative 'tata'
require_relative 'tesla'
require_relative 'garage'

describe "Garage"  do
  it "can be made" do
    expect{Garage.new}.to_not raise_error
  end

  it "can store cars" do
    my_garage = Garage.new
    my_tata = Tata.new 1989
    expect(my_garage.store(my_tata)).to be_a Array
  end

  it "can retreive cars" do
    my_garage = Garage.new
    expect(my_garage.retrieve).to be_a Array
  end

  it "can hold all types of cars" do
    my_garage = Garage.new
    my_tata = Tata.new 1980
    my_toyota = Toyota.new 1989
    my_tesla = Tesla.new 2000
    my_garage.store(my_toyota)
    my_garage.store(my_tata)
    my_garage.store(my_tesla)

    expect(my_garage.retrieve.length).to eq 3
  end

  it "can be sorted by year" do
    my_garage = Garage.new
    my_tata = Tata.new 1980
    my_toyota = Toyota.new 1989
    my_tesla = Tesla.new 2000
    my_garage.store(my_toyota)
    my_garage.store(my_tata)
    my_garage.store(my_tesla)

    expect(my_garage.sort_by_year(true)).to eq [my_tata, my_toyota, my_tesla]
    expect(my_garage.sort_by_year(false)).to eq [my_tesla, my_toyota, my_tata]
  end

  it "can be sorted by model name" do
    my_garage = Garage.new
    my_tata = Tata.new 1980
    my_toyota = Toyota.new 1989
    my_tesla = Tesla.new 2000
    my_garage.store(my_toyota)
    my_garage.store(my_tata)
    my_garage.store(my_tesla)

    expect(my_garage.sort_by_model(true)).to eq [my_tata, my_tesla, my_toyota]
    expect(my_garage.sort_by_model(false)).to eq [my_toyota, my_tesla, my_tata]

  end

  it "can be sorted by model name and then year" do
    my_garage = Garage.new
    my_tata = Tata.new 1980
    my_toyota = Toyota.new 1989
    my_tesla = Tesla.new 2000
    my_tata1 = Tata.new 1200
    my_toyota1 = Toyota.new 1300
    my_tesla1 = Tesla.new 1400
    my_garage.store(my_toyota)
    my_garage.store(my_tata)
    my_garage.store(my_tesla)
    my_garage.store(my_toyota1)
    my_garage.store(my_tata1)
    my_garage.store(my_tesla1)

    expect(my_garage.sort_by_model_then_year(true)).to eq [my_tata1, my_tata, my_tesla1, my_tesla, my_toyota1, my_toyota]
    expect(my_garage.sort_by_model_then_year(false)).to eq [my_toyota, my_toyota1, my_tesla, my_tesla1, my_tata, my_tata1]
  end

end
