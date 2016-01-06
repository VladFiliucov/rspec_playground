describe "Matchers" do
  it "asserts on equality" do
    number = 3
    expect(number).to eq(3)
  end


  it "asserts on mathematical operators" do
    number = 5
    expect(number).to be < 7
  end


  it "asserts on matching a regualar expressions" do
    email = "email@mail.com"
    regular_expression = /^\w+@\w+\.[a-z]{2,4}$/

    expect(email).to match regular_expression
  end


  it "asserts on types and classes" do
    object = 2.3

    expect(object).to be_a(Numeric) 
    #expect(object).to be_an_instance_of Float
  end


  it "asserts on truthiness" do
    bool = true
    falsy_bool = false
    nil_value = nil
    object = Class.new

    #expect(object).to be_truthy
    expect(bool).to be true
    #expect(falsy_bool).to be false
    #expect(nil_value).to be_falsy
  end

  it "expects errors" do
    expect do 
      raise ArgumentError
    end.to raise_error ArgumentError
    #end.to raise_error
  end


  it "expecrs throws" do
    expect {
      throw :oops
    }.to throw_symbol :oops
  end


  it "asserts on predicates" do
    class A
      def good?
        true	
      end
    end

    expect(A.new).to be_good
  end


  it "asserts on collections" do
    list = [
	    :zero,
	    :one,
	    :two,
	    :three
    ]

    expect(list).to include(:two)
    expect(list).to start_with(:zero)
    expect(list).to start_with [:zero, :one]
    expect(list).to end_with(:three)
  end


  it "negates asserts" do
    x = 25*3
    expect(3).not_to be x
  end
end
