context "with partial test doubles" do

  it "allows stubbing instance methods on Ruby classes" do
    time = Time.new(2010, 1, 1, 12, 0, 0)
    allow(time).to receive(:year).and_return(1975)

    expect(time.to_s).to eq('2010-01-01 12:00:00 +0000')
    expect(time.year).to eq(1975)
  end

  it "allows stubbing instance methods on custom classes" do
    class SuperHero
      attr_accessor :name
    end

    hero = SuperHero.new
    hero.name = "Superman"
    expect(hero.name).to eq("Superman")

    allow(hero).to receive(:name).and_return("Clark Kent")

    expect(hero.name).to eq("Clark Kent")
  end

  it "allows stubbing calls methods on Ruby classes" do
    fixed = Time.new(2010, 1, 1, 12, 0, 0)
    allow(Time).to receive(:now).and_return(fixed)

    expect(Time.now).to eq(fixed)
    expect(Time.now.to_s).to eq('2010-01-01 12:00:00 +0000')
    expect(Time.now.year).to eq(2010)
  end

  it "allows stubbing database calls a mock object" do
    class Customer
      attr_accessor :name
      def self.find
        # database lookup, returns one object
      end
    end

    dbl = double('Mock Customer')
    allow(dbl).to receive(:find).and_return('Bob')

    allow(Customer).to receive(:find).and_return(dbl)

    customer = Customer.find
    expect(customer.find).to eq('Bob')
  end

  it "allows stubbing database calls with a many mock objects" do
    class Customer
      attr_accessor :name
      def self.all
        # database lookup, returns array of objects
      end
    end

    c1 = double('First Customer', name: 'Bob')
    c2 = double('Second Customer', name: 'Mary')

    allow(Customer).to receive(:all).and_return([c1, c2])

    customers = Customer.all
    expect(customers[0].name).to eq('Bob')
  end
end
