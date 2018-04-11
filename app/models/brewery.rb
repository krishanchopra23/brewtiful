class Brewery
  attr_accessor :brews, :location, :name

  def initialize(location, name)
    @brews = []
    @location = location
    @name = name
  end

  def has_location?
    @location 
  end

  def has_name?
    @name
  end

  def out_of_stock?
    @brews.empty?
  end

end