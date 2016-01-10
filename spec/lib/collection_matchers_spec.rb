describe "collection matchers" do
  it "will match arrays" do
    array = [1, 2, 3]

    expect(array).to include(3)
    expect(array).to include(1, 3)

    expect(array).to start_with(1)
    expect(array).to end_with(3)

    expect(array).to match_array([3, 2, 1])
    expect(array).not_to match_array([1, 2])

    expect(array).to contain_exactly(3, 2, 1)  # similar to match_array
    expect(array).not_to contain_exactly(2, 1)
  end

  it "will match strings" do
    string = "I am a string"

    expect(string).to include("am")
    expect(string).to include("str", "ing")

    expect(string).to start_with("I ")
    expect(string).to end_with("ing")
  end

  it "will match hashes" do
    hash = {a: 1, b: 2, c: 3}

    expect(hash).to include(:a)
    expect(hash).to include(:a => 1)

    expect(hash).to include(a: 1, c: 3)
    expect(hash).to include({:a => 1, :b => 2})
    expect(hash).not_to include('a' => 1)
  end
end
