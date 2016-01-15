context "with message expectations" do

  it "expects a call and allows a response" do
    dbl = double("Chant")
    expect(dbl).to receive(:hey!).and_return("Ho!")
    dbl.hey!
    # it should work without and_return part
  end

  it "does not matter in which order" do
    dbl = double("Multi-step Process")

    expect(dbl).to receive(:step_1)
    expect(dbl).to receive(:step_2)

    dbl.step_2
    dbl.step_1
  end

  it "works with #ordered when order matters" do
    dbl = double("Multi-step Process")

    expect(dbl).to receive(:step_1).ordered
    expect(dbl).to receive(:step_2).ordered

    dbl.step_1
    dbl.step_2
  end
end
