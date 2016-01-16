context "with message count constraints" do

  it "allows constraints on message count" do
    class Cart
      def initialize
        @items = []
      end

      def add_item(id)
        @items << id
      end

      def restock_item(id)
        @items.delete(id)
      end

      def empty
        @items.each {|id| restock_item(id)}
      end
    end

    cart = Cart.new
    cart.add_item(35)
    cart.add_item(178)

    expect(cart).to receive(:restock_item).twice
    cart.empty
  end

  it "allows using at_least/at_most" do
    post = double('BlogPost')
    expect(post).to receive(:like).at_least(3).times
    post.like(:user => 'Bob')
    post.like(:user => 'Mary')
    post.like(:user => 'Ted)')
    post.like(:user => 'Jane')
  end

end
