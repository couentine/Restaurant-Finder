#==================================================================================================#
# 
# GET CITY SERVICE
# 
#
# => City_key can be City_id or City_name
#==================================================================================================#

class City::Get

#=== ATTRIBUTES ===#

  attr_accessor :city_key, :city

#=== METHODS ===#

  def initialize(city_key)
    @city_key = city_key
  end

  def perform
    @city = City.find(@city_key) rescue nil
  end
end