describe "Regular expression matcher" do
  # Only works with strings

  it "will match a string with a regular expression" do
    string = "The order has been received"

    expect(string).to match(/order(.+)received/)

    expect('123').to match(/\d{3}/)
    expect(123).not_to match(/\d{3}/)     # Only works with string

    email = "sonyk@inbox.ru"
    expect(email).to match(/\A\w+@\w+\.\w{2}\Z/)
  end
end

describe "Object type matchers" do
  
  it "will match object types" do
    expect('test').to be_an_instance_of(String)
    expect('test').to be_instance_of(String)
    expect('test').to be_a(String)
    expect([1, 2, 3]).to be_an(Array)
  end
end

describe "Respond to matcher" do
end

describe "Satisfy matcher" do
  #takes a block


end
