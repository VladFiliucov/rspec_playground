describe "numeric comparision matchers" do
  it "will match less then/ greater then" do
    expect(10).to be > 9
    expect(100).to be == 100
    expect(10).to be >= 10
    expect(10).to be <= 10
    expect(9).to be < 10
  end

  it "will match numeric ranges" do
    expect(5).to be_between(5, 7).inclusive
    expect(10).not_to be_between(5, 10).exclusive
    expect(10).to be_within(5).of(11)
    expect(5..10).to cover(9)
  end
end
