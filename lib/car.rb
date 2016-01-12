class Car
  attr_accessor :make, :wheels, :year, :color

  def initialize(options={})
    self.make = options[:make] || 'Volvo'
    self.year = (options[:year] || 2007).to_i
    self.color = options[:color] || 'unknown'
    @wheels = 4
  end

  def self.colors
    ['blue', 'black', 'purple', 'red']
  end

  def full_name
    "#{self.year.to_s} #{self.make} (#{self.color})"
  end
end
