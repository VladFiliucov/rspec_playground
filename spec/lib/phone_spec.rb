require "spec_helper"
require "phone"
require "screen"

describe Phone do
  it "Has a model name" do
    phone = Phone.new
    expect(phone.name).to eq("HTC")
  end

  it "Has a price" do
    phone = Phone.new
    expect(phone.price).to be < 700
  end
end

describe Screen do
  it "Has a power cable" do
    screen = Screen.new
    expect(screen.power_cable).to be_truthy
  end
end
