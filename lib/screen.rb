class Screen
  attr_accessor :power_cable, :resolution, :material, :name

  def power_cable
    power_cable = true
  end

  def resolution
    resolution = "480x240"
  end

  def material(name)
    return "This screen is made of Retina Material"
  end
end

class PhoneScreen < Screen
end
