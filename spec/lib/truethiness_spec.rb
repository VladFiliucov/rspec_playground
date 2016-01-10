describe "truethiness matchers" do
  it "will match true/false" do
    expect(1 < 2).to be(true)
    expect(1 > 2).to be(false)

    expect("string").not_to be(true)  #string is not exactly trueA
    expect(nil).not_to be(false)      #nil is not exactly false
    expect(0).not_to be(false)        # 0 is not exactly false
  end

  it "will match truethy/falsey" do
    expect(1 < 2).to be_truthy
    expect(1 > 2).to be_falsey

    expect("string").to be_truthy     #  Any value is treated as true
    expect(nil).to be_falsey          #  nil counts as falseA
    expect(0).not_to be_falsey        #  0 is still not falsey enough
  end

  it "will match nill" do
    expect(nil).to be_nil
    expect(nil).to be(nil)

    expect(false).not_to be_nil       # nil only. just like nil?
    expect(0).not_to be(nil)          #  nil only. just like nil
    
  end
end
