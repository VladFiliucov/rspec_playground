describe "Predicate matchers" do
  it "will match have_* to custom methods ending in ?" do
    # drops "be_", adds "?" to end, calls method on object.
    # can use these when methods end in "?", require no arguments, and return true or false
    
    # with built in methods
    expect([]).to be_empty  # [].empty?
    expect(1).to be_integer # 1.integer?
    expect(0).to be_zero    # 0.zero?
    expect(1).to be_nonzero # 1.nonzero?
    expect(1).to be_odd     # 1.odd?
    expect(2).to be_even    # 2.even?

    # with custom methods

    class Product; def visible?; true; end
    end

    product = Product.new

    expect(product).to be_visible         # product.visible?
    expect(product.visible?).to be true   # same as the one above
  end


  it "will match be_* to custom methods like has_* ?" do
    # change "have_" to "has_", adds "?" to end, calls method on object
    # can use these when method start with "has_", end in "?", and return true/false. Can have arguments, but not required.

    # with built-in methods
    hash = {a: 1, b: 2}
    expect(hash).to have_key(:a)          # hash.has_key?
    expect(hash).to have_value(2)         # hash.has_value?

    # with custom methods
    class Customer
      def has_pending_order?; true; end
    end
    customer = Customer.new

    expect(customer).to have_pending_order    # customer.has_pending_order?
    expect(customer.has_pending_order?).to be true  # the same as above
  end
end
