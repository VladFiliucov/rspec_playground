require "spec_helper"
require "screen"

describe Screen do
  it "has a resolution" do
    screen = Screen.new
    expect(screen.resolution).to eq("480x240")
  end

  it "is made a material" do
    screen = Screen.new
    screen.material("Retina")
    expect(screen.material).to include("Retina")
  end
end

describe PhoneScreen do
  it "has a resolution" do
    phone_screen = PhoneScreen.new
    expect(phone_screen.resolution).to be_truthy
  end
end
