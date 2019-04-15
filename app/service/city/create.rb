class City::Create


  #=== ATTRIBUTES ===#

  attr_accessor :city_params, :city

  #=== METHODS ===#

  def initialize(city_params)
    @city_params = city_params
  end

  def perform
    @city = City.new(@city_params)
    @city.save
    @city
  end 
end